FasdUAS 1.101.10   ��   ��    k             l     ��  ��    1 + homebridge-music/scripts/Music.applescript     � 	 	 V   h o m e b r i d g e - m u s i c / s c r i p t s / M u s i c . a p p l e s c r i p t   
  
 l     ��  ��    = 7 Copyright � 2016-2020 Erik Baauw. All rights reserved.     �   n   C o p y r i g h t   �   2 0 1 6 - 2 0 2 0   E r i k   B a a u w .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��  ��    : 4 Homebridge plugin for iTunes with Airplay speakers.     �   h   H o m e b r i d g e   p l u g i n   f o r   i T u n e s   w i t h   A i r p l a y   s p e a k e r s .      l     ��������  ��  ��        l     ��  ��      Player: Music     �      P l a y e r :   M u s i c      l     ��   ��    &   Speakers: Music Airplay devices      � ! ! @   S p e a k e r s :   M u s i c   A i r p l a y   d e v i c e s   " # " l     ��������  ��  ��   #  $ % $ i      & ' & I      �� (���� 0 getstate getState (  )�� ) o      ���� 0 i  ��  ��   ' Z     L * +�� , * G      - . - o     ���� 0 i   . =   	 / 0 / n     1 2 1 1    ��
�� 
prun 2 m     3 3�                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��   0 m    ��
�� boovtrue + k    H 4 4  5 6 5 r     7 8 7 I    �������� $0 getspeakerstates getSpeakerStates��  ��   8 o      ���� 0 sp   6  9�� 9 O    H : ; : k    G < <  = > = Z    / ? @�� A ? =    B C B 1    ��
�� 
pPlS C m    ��
�� ePlSkPSP @ r   " ) D E D n   " ' F G F 1   % '��
�� 
pnam G 1   " %��
�� 
pTrk E o      ���� 0 t  ��   A r   , / H I H m   , - J J � K K   I o      ���� 0 t   >  L�� L e   0 G M M b   0 G N O N b   0 E P Q P b   0 C R S R b   0 A T U T b   0 ? V W V b   0 = X Y X b   0 9 Z [ Z b   0 7 \ ] \ m   0 1 ^ ^ � _ _  { " o n " : ] l  1 6 `���� ` =  1 6 a b a 1   1 4��
�� 
pPlS b m   4 5��
�� ePlSkPSP��  ��   [ m   7 8 c c � d d  , " v o l u m e " : Y 1   9 <��
�� 
pVol W m   = > e e � f f  , " t r a c k " : " U o   ? @���� 0 t   S m   A B g g � h h  " , " s p e a k e r s " : Q o   C D���� 0 sp   O m   E F i i � j j  }��   ; m     k k�                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��  ��  ��   , e   K L l l m   K L m m � n n � { " o n " : f a l s e , " v o l u m e " : 0 , " t r a c k " : " " , " s p e a k e r s " : { " C o m p u t e r " : { " o n " : f a l s e , " v o l u m e " : 0 } } } %  o p o l     ��������  ��  ��   p  q r q i     s t s I      �� u���� 0 setplayeron setPlayerOn u  v w v o      ���� 0 o   w  x�� x o      ���� 0 t  ��  ��   t O     Q y z y k    P { {  | } | Z    , ~ �� � ~ o    ���� 0 o    k    $ � �  � � � Z     � ��� � � C     � � � o    	���� 0 t   � m   	 
 � � � � �  i t m s s : / / � I   �� ���
�� .GURLGURLnull��� ��� ctxt � o    ���� 0 t  ��  ��   � I   �� ���
�� .hookPlaynull��� ��� obj  � 4    �� �
�� 
cTrk � o    ���� 0 t  ��   �  ��� � r    $ � � � m     ��
�� boovfals � 1     #��
�� 
pMut��  ��   � I  ' ,������
�� .hookStopnull��� ��� null��  ��   }  � � � Z   - B � ��� � � =  - 2 � � � 1   - 0��
�� 
pPlS � m   0 1��
�� ePlSkPSP � r   5 < � � � n   5 : � � � 1   8 :��
�� 
pnam � 1   5 8��
�� 
pTrk � o      ���� 0 t  ��   � k   ? B � �  � � � l  ? ?�� � ���   � %  tell me to setAllSpeakersOff()    � � � � >   t e l l   m e   t o   s e t A l l S p e a k e r s O f f ( ) �  ��� � r   ? B � � � m   ? @ � � � � �   � o      ���� 0 t  ��   �  ��� � e   C P � � b   C P � � � b   C N � � � b   C L � � � b   C J � � � m   C D � � � � �  { " o n " : � l  D I ����� � =  D I � � � 1   D G��
�� 
pPlS � m   G H��
�� ePlSkPSP��  ��   � m   J K � � � � �  , " t r a c k " : " � o   L M���� 0 t   � m   N O � � � � �  " }��   z m      � ��                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��   r  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 changetrack changeTrack �  ��� � o      ���� 0 n  ��  ��   � O     F � � � k    E � �  � � � Z    ! � ����� � =   	 � � � 1    ��
�� 
pPlS � m    ��
�� ePlSkPSP � Z     � ��� � � o    ���� 0 n   � I   ������
�� .hookNextnull��� ��� null��  ��  ��   � I   ������
�� .hookPrevnull��� ��� null��  ��  ��  ��   �  � � � Z   " 7 � ��� � � =  " ' � � � 1   " %��
�� 
pPlS � m   % &��
�� ePlSkPSP � r   * 1 � � � n   * / � � � 1   - /��
�� 
pnam � 1   * -��
�� 
pTrk � o      ���� 0 t  ��   � k   4 7 � �  � � � l  4 4�� � ���   � %  tell me to setAllSpeakersOff()    � � � � >   t e l l   m e   t o   s e t A l l S p e a k e r s O f f ( ) �  ��� � r   4 7 � � � m   4 5 � � � � �   � o      ���� 0 t  ��   �  ��� � e   8 E � � b   8 E � � � b   8 C � � � b   8 A � � � b   8 ? � � � m   8 9 � � � � �  { " o n " : � l  9 > ����� � =  9 > � � � 1   9 <��
�� 
pPlS � m   < =��
�� ePlSkPSP��  ��   � m   ? @ � � � � �  , " t r a c k " : " � o   A B���� 0 t   � m   C D � � � � �  " }��   � m      � ��                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� "0 setplayervolume setPlayerVolume �  ��  o      ���� 0 v  ��  ��   � O      k      r    	 o    ���� 0 v   1    ��
�� 
pVol �� e   
 		 b   
 

 b   
  m   
  �  { " v o l u m e " : 1    ��
�� 
pVol m     �  }��   m     �                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��   �  l     ��~�}�  �~  �}    i     I      �|�{�| 0 setspeakeron setSpeakerOn  o      �z�z 0 sp   �y o      �x�x 0 o  �y  �{   O     0 k    /  !  r    "#" 6   $%$ 4   �w&
�w 
cAPD& m    �v�v % =  	 '(' 1   
 �u
�u 
pnam( o    �t�t 0 sp  # o      �s�s 0 d  ! )*) Z    '+,�r-+ o    �q�q 0 o  , k    .. /0/ r    121 m    �p
�p boovtrue2 n      343 1    �o
�o 
selc4 o    �n�n 0 d  0 565 l   �m78�m  7  
 delay 1.0   8 �99    d e l a y   1 . 06 :�l: l   �k;<�k  ; M G set selected of first AirPlay device whose name is "Computer" to false   < �== �   s e t   s e l e c t e d   o f   f i r s t   A i r P l a y   d e v i c e   w h o s e   n a m e   i s   " C o m p u t e r "   t o   f a l s e�l  �r  - r   " '>?> m   " #�j
�j boovfals? n      @A@ 1   $ &�i
�i 
selcA o   # $�h�h 0 d  * B�gB e   ( /CC b   ( /DED b   ( -FGF m   ( )HH �II  { " o n " :G n   ) ,JKJ 1   * ,�f
�f 
selcK o   ) *�e�e 0 d  E m   - .LL �MM  }�g   m     NN�                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��   OPO l     �d�c�b�d  �c  �b  P QRQ i    STS I      �aU�`�a $0 setspeakervolume setSpeakerVolumeU VWV o      �_�_ 0 sp  W X�^X o      �]�] 0 v  �^  �`  T O      YZY k    [[ \]\ r    ^_^ 6   `a` 4   �\b
�\ 
cAPDb m    �[�[ a =  	 cdc 1   
 �Z
�Z 
pnamd o    �Y�Y 0 sp  _ o      �X�X 0 d  ] efe r    ghg o    �W�W 0 v  h n      iji 1    �V
�V 
pVolj o    �U�U 0 d  f klk l   �Tmn�T  m 3 - get "{\"volume\":" & sound volume of d & "}"   n �oo Z   g e t   " { \ " v o l u m e \ " : "   &   s o u n d   v o l u m e   o f   d   &   " } "l p�Sp e    qq b    rsr b    tut m    vv �ww  { " v o l u m e " :u o    �R�R 0 v  s m    xx �yy  }�S  Z m     zz�                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��  R {|{ l     �Q�P�O�Q  �P  �O  | }~} i    � I      �N�M�L�N $0 getspeakerstates getSpeakerStates�M  �L  � k     C�� ��� r     ��� m     �� ���  ,� 1    �K
�K 
txdl� ��J� O    C��� k   
 B�� ��� r   
 ��� J   
 �I�I  � o      �H�H 0 sp  � ��� X    <��G�� k   ! 7�� ��� l  ! !�F���F  � O I Don't use id of Airplay device, as this changes when iTunes is restarted   � ��� �   D o n ' t   u s e   i d   o f   A i r p l a y   d e v i c e ,   a s   t h i s   c h a n g e s   w h e n   i T u n e s   i s   r e s t a r t e d� ��E� s   ! 7��� b   ! 4��� b   ! 2��� b   ! .��� b   ! ,��� b   ! (��� b   ! &��� m   ! "�� ���  "� n   " %��� 1   # %�D
�D 
pnam� o   " #�C�C 0 d  � m   & '�� ���  " : { " o n " :� n   ( +��� 1   ) +�B
�B 
selc� o   ( )�A�A 0 d  � m   , -�� ���  , " v o l u m e " :� n   . 1��� 1   / 1�@
�@ 
pVol� o   . /�?�? 0 d  � m   2 3�� ���  }� n      ���  ;   5 6� o   4 5�>�> 0 sp  �E  �G 0 d  � 2   �=
�= 
cAPD� ��<� e   = B�� b   = B��� b   = @��� m   = >�� ���  {� o   > ?�;�; 0 sp  � m   @ A�� ���  }�<  � m    ���                                                                                      @ alis    "  macmini                        BD ����	Music.app                                                      ����            ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    m a c m i n i  System/Applications/Music.app   / ��  �J  ~ ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  �   on setAllSpeakersOff()   � ��� .   o n   s e t A l l S p e a k e r s O f f ( )� ��� l     �6���6  � Q K 	tell application "Music" to set selected of every AirPlay device to false   � ��� �   	 t e l l   a p p l i c a t i o n   " M u s i c "   t o   s e t   s e l e c t e d   o f   e v e r y   A i r P l a y   d e v i c e   t o   f a l s e� ��� l     �5���5  �   end setAllSpeakersOff   � ��� ,   e n d   s e t A l l S p e a k e r s O f f� ��4� l     �3�2�1�3  �2  �1  �4       	�0���������0  � �/�.�-�,�+�*�)�/ 0 getstate getState�. 0 setplayeron setPlayerOn�- 0 changetrack changeTrack�, "0 setplayervolume setPlayerVolume�+ 0 setspeakeron setSpeakerOn�* $0 setspeakervolume setSpeakerVolume�) $0 getspeakerstates getSpeakerStates� �( '�'�&���%�( 0 getstate getState�' �$��$ �  �#�# 0 i  �&  � �"�!� �" 0 i  �! 0 sp  �  0 t  �  3������� J ^ c� e g i m
� 
prun
� 
bool� $0 getspeakerstates getSpeakerStates
� 
pPlS
� ePlSkPSP
� 
pTrk
� 
pnam
� 
pVol�% M�
 	��,e �& ?*j+ E�O� /*�,�  *�,�,E�Y �E�O�*�,� %�%*�,%�%�%�%�%�%UY �� � t������ 0 setplayeron setPlayerOn� ��� �  ��� 0 o  � 0 t  �  � ��� 0 o  � 0 t  �  � ������
�	��� � � � �
� .GURLGURLnull��� ��� ctxt
� 
cTrk
� .hookPlaynull��� ��� obj 
� 
pMut
�
 .hookStopnull��� ��� null
�	 
pPlS
� ePlSkPSP
� 
pTrk
� 
pnam� R� N� !�� 
�j Y 
*�/j Of*�,FY *j O*�,�  *�,�,E�Y �E�O�*�,� %�%�%�%U� � ������� 0 changetrack changeTrack� ��� �  � �  0 n  �  � ������ 0 n  �� 0 t  �  ������������� � � � �
�� 
pPlS
�� ePlSkPSP
�� .hookNextnull��� ��� null
�� .hookPrevnull��� ��� null
�� 
pTrk
�� 
pnam� G� C*�,�  � 
*j Y *j Y hO*�,�  *�,�,E�Y �E�O�*�,� %�%�%�%U� �� ����������� "0 setplayervolume setPlayerVolume�� ����� �  ���� 0 v  ��  � ���� 0 v  � ��
�� 
pVol�� � �*�,FO�*�,%�%U� ������������ 0 setspeakeron setSpeakerOn�� ����� �  ������ 0 sp  �� 0 o  ��  � �������� 0 sp  �� 0 o  �� 0 d  � N�������HL
�� 
cAPD�  
�� 
pnam
�� 
selc�� 1� -*�k/�[�,\Z�81E�O� e��,FOPY f��,FO��,%�%U� ��T���������� $0 setspeakervolume setSpeakerVolume�� ����� �  ������ 0 sp  �� 0 v  ��  � �������� 0 sp  �� 0 v  �� 0 d  � z�������vx
�� 
cAPD
�� 
pnam
�� 
pVol�� !� *�k/�[�,\Z�81E�O���,FO�%�%U� ������������� $0 getspeakerstates getSpeakerStates��  ��  � ������ 0 sp  �� 0 d  � ������������������������
�� 
txdl
�� 
cAPD
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
selc
�� 
pVol�� D�*�,FO� :jvE�O ,*�-[��l kh ��,%�%��,%�%��,%�%�6G[OY��O�%�%Uascr  ��ޭ