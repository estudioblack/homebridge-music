// homebridge-music/index.js
// Copyright © 2016-2018 Erik Baauw. All rights reserved.
//
// Homebridge plugin for iTunes with Airplay speakers.

'use strict';

const semver = require('semver');
const util = require('util');

const MusicAccessoryModule = require('./MusicAccessory');
const MusicAccessory = MusicAccessoryModule.MusicAccessory;
const Script = require('./Script').Script;
const packageJson = require('../package.json');

module.exports = {
  MusicPlatform: MusicPlatform,
  setHomebridge: setHomebridge
};

function minVersion(range) {
  let s = range.split(' ')[0];
  while (s) {
    if (semver.valid(s)) {
      break;
    }
    s = s.substring(1);
  }
  return s ? s : undefined;
}

let Accessory;
let Service;
let Characteristic;
let homebridgeVersion;

function setHomebridge(homebridge) {
  MusicAccessoryModule.setHomebridge(homebridge);

  Accessory = homebridge.platformAccessory;
  Service = homebridge.hap.Service;
  Characteristic = homebridge.hap.Characteristic;
  homebridgeVersion = homebridge.serverVersion;

  // Custom homekit characteristic for name of current track.
  // Source: homebridge-zp.
  Characteristic.CurrentTrack = function() {
    Characteristic.call(this, 'Current Track', Characteristic.CurrentTrack.UUID);
    this.setProps({
      format: Characteristic.Formats.STRING,
      perms: [Characteristic.Perms.READ, Characteristic.Perms.NOTIFY]
    });
    this.value = this.getDefaultValue();
  };
  util.inherits(Characteristic.CurrentTrack, Characteristic);
  Characteristic.CurrentTrack.UUID = '00000045-0000-1000-8000-656261617577';

  // Custom homekit characteristic for changing track.
  // Source: homebridge-zp.
  Characteristic.ChangeTrack = function() {
    Characteristic.call(this, 'Change Track', Characteristic.ChangeTrack.UUID);
    this.setProps({
      format: Characteristic.Formats.INT,
      minValue: -1,
      maxValue: 1,
      stepValue: 1,
      perms: [Characteristic.Perms.READ, Characteristic.Perms.NOTIFY,
              Characteristic.Perms.WRITE]
    });
    this.value = this.getDefaultValue();
  };
  util.inherits(Characteristic.ChangeTrack, Characteristic);
  Characteristic.ChangeTrack.UUID = '00000047-0000-1000-8000-656261617577';
}

// Constructor for MusicPlatform.  Called by homebridge on load time.
function MusicPlatform(log, config, api) {
  this.log = log;
  this.musicAccessories = {};		// Map of platform accessories.

  // Plug-in configuration.
  this.name = config.name || 'Music';
  switch (config.service) {
    case undefined:
      /* Falls through */
    case 'switch':
      this.service = Service.Switch;
      this.characteristic = config.brightness ? Characteristic.Brightness : Characteristic.Volume;
      break;
    case 'light':
      this.service = Service.Lightbulb;
      this.characteristic = Characteristic.Brightness;
      break;
    case 'speaker':
      this.service = Service.Speaker;
      this.characteristic = config.brightness ? Characteristic.Brightness : Characteristic.Volume;
      break;
    case 'fan':
      this.service = Service.Fan;
      this.characteristic = Characteristic.RotationSpeed;
      break;
    default:
      this.log.warn('config.json: warning: ignoring unknown service \'%s\'', config.service);
      this.service = Service.Switch;
      this.characteristic = Characteristic.Volume;
      break;
  }
  this.track = config.track || '';
  this.scriptName = config.script || 'iTunes';
  this.script = new Script(this, this.scriptName);
  this.speakerName = new RegExp(config.speakername || '.*');
  this.heartrate = config.heartrate || 5;
  this.heartrate *= 1000;

  var msg = util.format(
    '%s v%s, node %s, homebridge v%s', packageJson.name,
    packageJson.version, process.version, homebridgeVersion
  );
  this.infoMessage = msg;
  this.log.info(this.infoMessage);
  if (semver.clean(process.version) !== minVersion(packageJson.engines.node)) {
    this.log.warn(
      'warning: not using recommended node version v%s LTS',
      minVersion(packageJson.engines.node)
    );
  }
  if (homebridgeVersion !== minVersion(packageJson.engines.homebridge)) {
    this.log.warn(
      'warning: not using recommended homebridge version v%s',
      minVersion(packageJson.engines.homebridge)
    );
  }
  this.log.debug('config.json: %j', config);
}

// Called by homebridge to retrieve static list of MusicAccessories.
MusicPlatform.prototype.accessories = function(callback) {
  this.script.getState(function (obj) {
    this.accessoryList = [];
    if (obj) {
      let track = obj.track || this.track || '';
      this.musicAccessories[''] = new MusicAccessory(this, '', this.name, obj.on, obj.volume, track);
      this.accessoryList.push(this.musicAccessories['']);
      for (let name in obj.speakers) {
        if (name.match(this.speakerName)) {
          let o = obj.speakers[name];
          this.musicAccessories[name] = new MusicAccessory(this, name, name, o.on, o.volume);
          this.accessoryList.push(this.musicAccessories[name]);
      	}
      }
    }
    setInterval(function() {
      this.heartbeat();
    }.bind(this), this.heartrate);
    callback(this.accessoryList);
  }.bind(this));
};

// Refresh MusicAccessories on heartbeat.
MusicPlatform.prototype.heartbeat = function() {
  this.script.getState(function (obj) {
    if (obj) {
      // Check state for known MusicAcessories.
      for (let name in this.musicAccessories) {
        let a = this.musicAccessories[name];
        if (name) {
          // Speaker.
          let o = obj.speakers[name];
          if (o) {
            a.update(o.on, o.volume);
          }
        } else {
          // Player.
          a.update(obj.on, obj.volume, obj.track);
      }
      }
    }
  }.bind(this));
};