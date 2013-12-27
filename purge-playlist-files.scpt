FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Purge playlist files" for iTunes
based on "Delete Tracks Never Played"
written by Doug Adams
dougadams@mac.com (http://dougscripts.com/itunes/scripts/ss.php?sp=deleteneverplayed)

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.malcolmadams.com/itunes/

Instructions for use:
		1) Put script into iTunes Scripts folder: ~/Library/iTunes/Scripts
		2) Set theP to the playlist you want to delete files from, in my case its a smart playlist whose files are greater than 5 days old
		3) Designed to be run out of cron.  eg: 
			$ crontab -l
			30 3 * * * osascript ~/Library/iTunes/Scripts/purge-playlist-files.scpt
     � 	 	6 
 " P u r g e   p l a y l i s t   f i l e s "   f o r   i T u n e s 
 b a s e d   o n   " D e l e t e   T r a c k s   N e v e r   P l a y e d " 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m   ( h t t p : / / d o u g s c r i p t s . c o m / i t u n e s / s c r i p t s / s s . p h p ? s p = d e l e t e n e v e r p l a y e d ) 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . m a l c o l m a d a m s . c o m / i t u n e s / 
 
 I n s t r u c t i o n s   f o r   u s e : 
 	 	 1 )   P u t   s c r i p t   i n t o   i T u n e s   S c r i p t s   f o l d e r :   ~ / L i b r a r y / i T u n e s / S c r i p t s 
 	 	 2 )   S e t   t h e P   t o   t h e   p l a y l i s t   y o u   w a n t   t o   d e l e t e   f i l e s   f r o m ,   i n   m y   c a s e   i t s   a   s m a r t   p l a y l i s t   w h o s e   f i l e s   a r e   g r e a t e r   t h a n   5   d a y s   o l d 
 	 	 3 )   D e s i g n e d   t o   b e   r u n   o u t   o f   c r o n .     e g :   
 	 	 	 $   c r o n t a b   - l 
 	 	 	 3 0   3   *   *   *   o s a s c r i p t   ~ / L i b r a r y / i T u n e s / S c r i p t s / p u r g e - p l a y l i s t - f i l e s . s c p t 
   
  
 l     ��������  ��  ��        i         I      �� ���� 0 	log_event     ��  o      ���� 0 
themessage  ��  ��    k            l      ��  ��    \ V log_event function from http://hints.macworld.com/article.php?story=2004121710493371      �   �   l o g _ e v e n t   f u n c t i o n   f r o m   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 4 1 2 1 7 1 0 4 9 3 3 7 1        r         b         b     	    l 
     ����   l     !���� ! I    �� " #
�� .sysoexecTEXT���     TEXT " l 	    $���� $ m      % % � & & 4 d a t e     + ' % Y - % m - % d   % H : % M : % S '��  ��   # �� '��
�� 
rtyp ' m    ��
�� 
TEXT��  ��  ��  ��  ��    m     ( ( � ) )     o   	 
���� 0 
themessage    o      ���� 0 theline theLine   *�� * I   �� +��
�� .sysoexecTEXT���     TEXT + b     , - , b     . / . m     0 0 � 1 1 
 e c h o   / o    ���� 0 theline theLine - l 	   2���� 2 m     3 3 � 4 4 V   > >   ~ / L i b r a r y / L o g s / p u r g e - p l a y l i s t - f i l e s . l o g��  ��  ��  ��     5 6 5 l     ��������  ��  ��   6  7�� 7 l    � 8���� 8 O     � 9 : 9 k    � ; ;  < = < Q     > ? @ > r    
 A B A m     C C � D D 4 T V   S h o w s   o l d e r   t h a n   5   d a y s B o      ���� 0 thep theP ? R      ������
�� .ascrerr ****      � ****��  ��   @ I   �� E F
�� .sysodlogaskr        TEXT E m     G G � H H 0 N o   p l a y l i s t   i s   s e l e c t e d . F �� I J
�� 
btns I J     K K  L�� L m     M M � N N  C a n c e l��   J �� O P
�� 
dflt O m    ����  P �� Q��
�� 
disp Q m    ���� ��   =  R S R l     ��������  ��  ��   S  T U T l      �� V W��   V � �display dialog "Caution!" & return & return & "This script will remove every video from the playlist '" & theP & "'. Each associated file will also be Trashed." buttons {"Cancel", "Procede..."} default button 1 with icon 2    W � X X� d i s p l a y   d i a l o g   " C a u t i o n ! "   &   r e t u r n   &   r e t u r n   &   " T h i s   s c r i p t   w i l l   r e m o v e   e v e r y   v i d e o   f r o m   t h e   p l a y l i s t   ' "   &   t h e P   &   " ' .   E a c h   a s s o c i a t e d   f i l e   w i l l   a l s o   b e   T r a s h e d . "   b u t t o n s   { " C a n c e l " ,   " P r o c e d e . . . " }   d e f a u l t   b u t t o n   1   w i t h   i c o n   2 U  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ]   procede...    ^ � _ _    p r o c e d e . . . \  `�� ` t     � a b a k   " � c c  d e d r   " * f g f l  " ( h���� h n   " ( i j i 2   & (��
�� 
cTrk j 4   " &�� k
�� 
cUsP k o   $ %���� 0 thep theP��  ��   g o      ���� 0 these_tracks   e  l�� l X   + � m�� n m Q   ? � o p�� o l  B � q r s q k   B � t t  u v u r   B W w x w n   B S y z y 1   O S��
�� 
strq z n   B O { | { 1   K O��
�� 
psxp | l  B K }���� } c   B K ~  ~ l  B G ����� � n  B G � � � 1   C G��
�� 
pLoc � o   B C���� 0 atrack aTrack��  ��    m   G J��
�� 
TEXT��  ��   x o      ���� 0 loc   v  � � � r   X a � � � n  X ] � � � 1   Y ]��
�� 
pDID � o   X Y���� 0 atrack aTrack � o      ���� 0 dbid   �  � � � r   b m � � � b   b i � � � m   b e � � � � �  r m   � o   e h���� 0 loc   � o      ���� 0 the_command   �  � � � n  n z � � � I   o z�� ����� 0 	log_event   �  ��� � b   o v � � � m   o r � � � � �  c m d   i s   � o   r u���� 0 the_command  ��  ��   �  f   n o �  � � � n  { � � � � I   | ��� ����� 0 	log_event   �  ��� � b   | � � � � m   |  � � � � � 6 d e l e t e   t r a c k   w i t h   D B   I D   o f   � o    ����� 0 dbid  ��  ��   �  f   { | �  � � � I  � ��� ���
�� .coredelonull���    obj  � l  � � ����� � 6  � � � � � n   � � � � � 3   � ���
�� 
cTrk � 4   � ��� �
�� 
cLiP � m   � �����  � =  � � � � � 1   � ���
�� 
pDID � o   � ����� 0 dbid  ��  ��  ��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 the_command  ��  ��   r , & will skip a track if any errors occur    s � � � L   w i l l   s k i p   a   t r a c k   i f   a n y   e r r o r s   o c c u r p R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 0 atrack aTrack n o   . /���� 0 these_tracks  ��   b m     !�������   : m      � ��                                                                                  hook  alis    2  SSD                        Ʌ��H+   f@
iTunes.app                                                      
$����        ����  	                Applications    Ʌ�      ��r     f@  SSD:Applications: iTunes.app   
 i T u n e s . a p p    S S D  Applications/iTunes.app   / ��  ��  ��  ��       �� � � ���   � ������ 0 	log_event  
�� .aevtoappnull  �   � **** � �� ���� � ����� 0 	log_event  �� �� ���  �  ���� 0 
themessage  ��   � ������ 0 
themessage  �� 0 theline theLine �  %������ ( 0 3
�� 
rtyp
�� 
TEXT
�� .sysoexecTEXT���     TEXT�� ���l �%�%E�O�%�%j  � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  7����  ��  ��   � ���� 0 atrack aTrack � # � C������ G� M�~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m ��l ��k ��j ��i�h�� 0 thep theP��  ��  
� 
btns
�~ 
dflt
�} 
disp�| 
�{ .sysodlogaskr        TEXT�z�
�y 
cUsP
�x 
cTrk�w 0 these_tracks  
�v 
kocl
�u 
cobj
�t .corecnte****       ****
�s 
pLoc
�r 
TEXT
�q 
psxp
�p 
strq�o 0 loc  
�n 
pDID�m 0 dbid  �l 0 the_command  �k 0 	log_event  
�j 
cLiP �  
�i .coredelonull���    obj 
�h .sysoexecTEXT���     TEXT�� �� � �E�W X  ���kv�k�l� O�n*��/�-E�O ��[a a l kh   n�a ,a &a ,a ,E` O�a ,E` Oa _ %E` O)a _ %k+ O)a _ %k+ O*a k/�.a  [a ,\Z_ 81j !O_ j "W X  h[OY��oUascr  ��ޭ