GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex (      �      0E�����4Ҋ��� $   res://character/Character.gd.remap  �9      .       ރ����w����śL@    res://character/Character.gdc   �      z	      h�(T��0�C��V    res://character/Character.tscn         s      ��o�$5i�M�A�Fa4   res://custom_nodes/CustomNavigationAgent2D.gd.remap :      ?       �r��y!xvr���m70   res://custom_nodes/CustomNavigationAgent2D.gdc  �      �      ���I���H��C�-I�<   res://custom_nodes/CustomNavigationPolygonInstance.gd.remap P:      G       xf���>'���:O�8   res://custom_nodes/CustomNavigationPolygonInstance.gdc  P      �
      tP7V��ȳÅ����
�   res://default_env.tres  �&      �       um�`�N��<*ỳ�8   res://global/global.gd.remap�:      (       ��l$}�ӱ�%͕   res://global/global.gdc �'      e       ��<��,�e4&�L�AS   res://icon.png   ;      �      G1?��z�c��vN��   res://icon.png.import   �-      �      ϴ!our��D\��s   res://main.gd.remap �:             ֤�\n�������Dݮ�   res://main.gdc  �0      S       j��q�9������   res://main.tscn �0      Z       8�X�YkȽ��p�l   res://project.binaryH      �      #$}��)�H���:W    res://test/test.gd.remap�:      $       ��ay��'�C��wP�   res://test/test.gdc P4      k      S�ǥz���������   res://test/test.tscn�8            g�� ��f�6b�X�    GDSC   3      O   �     ������������τ�   ����򶶶   �������   �������������޶�   ��������Ӷ��   �������Ӷ���   ���ӄ�   ���������������¶���   ��������������򶶶   ��������ض��   ���ض���   ��������¶��   ���¶���   ���������¶�   ����¶��   ������ƶ   �ƶ�   �������Ӷ���   ���Ӷ���   ������򶶶   ���������������Ŷ���   ����׶��   �������϶���   ��������   ����������Ķ   ���������ڶ�   ������������Ѷ��   ���������������������Ҷ�   �����������Ӷ���   �������Ķ���   �������ض���   �����������ٶ���   ����������������ض��   �������Ӷ���   ϶��   �������������Ӷ�   �涶   ������������������ض   ���������Ŷ�   ������������������ض   �����������Ŷ���   ����¶��   �����������޶���   ��������¶��   �������ڶ���   ������������Ŷ��   �����������Ѷ���   ����������¶   ���ӄ�   ��϶   �����������ض���   x      �         SKACI      2                                                           !      "   	   *   
   2      :      B      J      T      U      V      a      h      i      y      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1      2     3     4     5     6     7   #  8   $  9   ,  :   2  ;   3  <   4  =   ?  >   G  ?   P  @   S  A   [  B   \  C   c  D   d  E   o  F   y  G     H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   3YY:�  Y:�  �  YY8P�  Q;�  Y5;�  V�  P�  Q<�  YY5;�  VW�  Y5;�	  VW�
  Y5;�  VW�  Y5;�  VW�  Y5;�  VW�  Y5;�  VW�  �  YYY0�  P�  V�  QX=V�  ;�  �  T�  �  �  &P�  PQ�  PQ�  PQQV�  &�  T�  PQV�  �  PQ�  �  ;�  �  T�  P�  T�   PQQ�  �  �  �  �  �  �  &�!  P�  QV�  �  �  T�  �  �?  P�  Q�  (V�  �  T�"  �  �  �  �  �#  P�  R�  T�$  QYYYY0�%  P�&  V�  QX=V�  �  T�'  P�&  QYYY0�  PQV�  �  T�(  PQ�  �  )�)  �  T�*  PQV�  �  T�+  P�  T�,  P�)  QQYYY0�  PQX�  V�  .�-  P�	  QYYY0�  PQX�  V�  .�-  P�  Q�-  P�  QYY0�  PQX�  V�  .�-  P�  QYYY0�!  P�  V�  QX�  V�  &�  �  T�$  V�  �  T�  �  �  �  (V�  �  T�  �  �  �  �  .�  T�.  PQYY0�-  P�/  V�0  QX�  V�  )�1  �/  T�2  PQV�  �1  �1  <�  �  �  &�1  T�.  PQV�  .�  �  �  .�  YYY`      [gd_scene load_steps=5 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://character/Character.gd" type="Script" id=2]
[ext_resource path="res://custom_nodes/CustomNavigationAgent2D.gd" type="Script" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 40.0

[node name="Character" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="NavigationAgent2D" type="NavigationAgent2D" parent="."]
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.25, -0.25 )
shape = SubResource( 1 )

[node name="Icon" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Down" type="Node2D" parent="."]

[node name="RayCast2D1" type="RayCast2D" parent="Down"]
position = Vector2( -40, 0 )
enabled = true

[node name="RayCast2D2" type="RayCast2D" parent="Down"]
enabled = true

[node name="RayCast2D3" type="RayCast2D" parent="Down"]
position = Vector2( 40, 0 )
enabled = true

[node name="Left" type="Node2D" parent="."]
rotation = -1.57079

[node name="RayCast2D1" type="RayCast2D" parent="Left"]
position = Vector2( -40, 0 )
enabled = true

[node name="RayCast2D2" type="RayCast2D" parent="Left"]
enabled = true

[node name="RayCast2D3" type="RayCast2D" parent="Left"]
position = Vector2( 40, 0 )
enabled = true

[node name="Right" type="Node2D" parent="."]
rotation = -4.71238

[node name="RayCast2D1" type="RayCast2D" parent="Right"]
position = Vector2( -40, 0 )
enabled = true

[node name="RayCast2D2" type="RayCast2D" parent="Right"]
enabled = true

[node name="RayCast2D3" type="RayCast2D" parent="Right"]
position = Vector2( 40, 0 )
enabled = true

[node name="Up" type="Node2D" parent="."]
rotation = -3.14159

[node name="RayCast2D1" type="RayCast2D" parent="Up"]
position = Vector2( -40, 0 )
enabled = true

[node name="RayCast2D2" type="RayCast2D" parent="Up"]
enabled = true

[node name="RayCast2D3" type="RayCast2D" parent="Up"]
position = Vector2( 40, 0 )
enabled = true

[node name="Move" type="Node2D" parent="."]
rotation = -3.14159

[node name="RayCast2D" type="RayCast2D" parent="Move"]
enabled = true
cast_to = Vector2( 0, -60 )
             GDSC         (   �      ��������������򶶶   ������������������ض   ���������Ŷ�   ���������������Ŷ���   �������¶���   ��������Ҷ�   �������Ӷ���   �����������������ƶ�   ������؄򶶶   �������Ŷ���   ������ض   ߶��   ���Ӷ���   ׶��   Զ��   ��������ڶ��   ����¶��   �������϶���    �����������������������������Ҷ   ���¶���   ������������������ٶ   	   platforms                                                                    	   )   
   /      0      7      8      E      M      R      S      _      f      i      r      s      |      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YYYY0�  P�  V�  QX=V�  ;�  V�  �  ;�  V�  �  �  )�  �  PQT�  PQV�  �  �  <�  �  �  ;�	  �  T�
  �  �  )�  �K  P�	  T�  PQQV�  ;�  �	  L�  M�  ;�  V�  �  �  &�  �	  T�  PQ�  V�  �  �	  L�  M�  (V�  �  �	  L�  �  M�  �  �  �  T�  P�  Q�  �  �  T�  P�  Q�  �  ;�  �  T�  P�  R�  R�  Q�  ;�  �  T�  P�  Q�  �  &�  �  	�  V�  �  �  �  �  �  �  �  T�  P�  QYYYYYYY`GDSC   /      U   �     ������������������������Ӷ��   �����������󶶶�   ����������������   ������؄򶶶   �����϶�   ����   ����Ķ��   ��������Ҷ��   ��������������������������ض   ������Ӷ   ������϶   ����������������¶��   ����������Ӷ   ����������Ӷ   ��������������������������Ŷ   ������������������������   ������������Ŷ��   ���������������϶���   �����ض�   ���¶���   ����������϶   ���������τ򶶶�   ��������������Ӷ   �������������ӄ򶶶�   ���������Ӷ�   �������������ӄ򶶶�   ������Ŷ   ���Ӷ���   ����Ӷ��   �������ض���   ��Ҷ   ζ��   ϶��   ��������Ҷ�   ������ض   ���������������ض���   �����������ƶ���   ��������   ն��   �����������ض���   ���������Ӷ�   �����ڶ�   ����Ѷ��   ߶��   ����������Ӷ   ������������϶��   ���Ӷ���             aqua      ?                  red    	   platforms         black                                                       	      
         %      0      5      6      7      8      C      M      T      W      `      f      j      k      l      m      n      o      p      q      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2   	  3     4     5     6     7      8   &  9   *  :   +  ;   ,  <   4  =   C  >   D  ?   L  @   M  A   W  B   ]  C   h  D   k  E   t  F   }  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   3YYY>N�  �  RYOYY;�  V�  YY0�  PQX=V�  �  �  T�  PQ�  �  T�  �T  P�  R�  Q�  �  P�  QYYYY0�  P�	  V�  QX=V�  &�
  T�  PQ	�  V�  �
  T�  P�	  Q�  (V�  �
  T�  P�  R�	  Q�  �
  T�  PQ�  �  PQYYYYYYYY0�  P�  V�  R�  V�  QX=V�  )�  �  V�  �  �  <�  �  ;�  �  T�  PQ�  ;�  �  T�  PQ�  ;�  �  T�  PQ�  �  �  T�  �  T�  �  �  �  �  T�  �  �  �  �  T�  �  T�  �  P�  T�  T�  �  R�  T�  T�   �  Q�  �  T�  P�  Q�  �  ;�!  �  T�  PQ�  �!  T�"  �#  P�  Q�  �!  T�  �T  P�  R�  Q�  �!  T�  P�  Q�  �!  T�$  P�  Q�  �  �  P�!  Q�  �  �
  T�  P�#  P�  T�%  P�  QQQ�  �  �  �
  T�  PQ�  �  PQYYY0�  PQX=V�  )�&  �  T�'  PQV�&  T�(  PQ�  �  &�)  T�*  V.�  �  )�+  �
  T�  PQV�  &�+  �  V�  �  T�"  �
  T�,  P�+  Q�  (V�  ;�-  �  T�  PQ�  �-  T�  �T  P�  Q�  �-  T�"  �
  T�,  P�+  Q�  �-  T�.  �>  P�+  Q�  �  T�  P�-  QYYY70�#  P�  V�  QX�  V�  .�  PL�  �  T�  R�  �  T�  �  P�  T�  T�  RQR�  �  T�  R�  �  T�  �  PR�  T�  T�   QR�  MQYYY`       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            
      ���Ӷ���   ����Ѷ��                               3YY;�  Y`           GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=1
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC                   ���ӄ�                               3YYYY`             [gd_scene load_steps=5 format=2]

[ext_resource path="res://character/Character.tscn" type="PackedScene" id=1]
[ext_resource path="res://main.gd" type="Script" id=3]
[ext_resource path="res://custom_nodes/CustomNavigationPolygonInstance.gd" type="Script" id=5]

[sub_resource type="NavigationPolygon" id=1]

[node name="Main" type="Node2D"]
script = ExtResource( 3 )

[node name="NavigationPolygonInstance" type="NavigationPolygonInstance" parent="."]
navpoly = SubResource( 1 )
script = ExtResource( 5 )

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( -8, -4 )
current = true

[node name="CharacterPath2D" type="Line2D" parent="."]
width = 2.0
default_color = Color( 0.933333, 0.52549, 0, 1 )

[node name="Character" parent="." instance=ExtResource( 1 )]
position = Vector2( 37, -163 )
line_node_path = NodePath("../CharacterPath2D")
      GDSC         &   �      ���ӄ�   �����϶�   ���ض���   ������������������������Ӷ��   ��������������������������ض   ������������Ŷ��   ��������Ķ��   �������������ӄ򶶶�   ����Ӷ��   �����Ŷ�   ���������������¶���   ����¶��   ��������������������ض��   �����������ζ���   �����������   ������Ҷ   ������������������ض   �����������������������ض���         ,     2      �      <      d      K                                                        	   (   
   1      :      >      ?      H      K      U      \      _      b      l      s      v      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   3YYYY0�  PQV�  �  W�  �  T�  P�  PL�  �  PR�  QR�  �  PR�  QR�  �  PR�  QR�  �  PR�  Q�  MQQ�  �  W�  �  T�  PL�  �  P�  �  P�  R�  QR�  �  P�  R�  Q�  QR�  �  P�  �  P�  R�  QR�  �  P�  R�  Q�  QR�  MRW�  �  �  T�  T�	  QYY0�
  P�  QV�  &�  4�  V�  &�  T�  �  �  T�  V�  W�  �  T�  PW�  T�  PQQYYYYYYYYYY`     [gd_scene load_steps=3 format=2]

[ext_resource path="res://test/test.gd" type="Script" id=1]
[ext_resource path="res://main.tscn" type="PackedScene" id=2]

[node name="Test" type="Node2D"]
script = ExtResource( 1 )

[node name="Main" parent="." instance=ExtResource( 2 )]
               [remap]

path="res://character/Character.gdc"
  [remap]

path="res://custom_nodes/CustomNavigationAgent2D.gdc"
 [remap]

path="res://custom_nodes/CustomNavigationPolygonInstance.gdc"
         [remap]

path="res://global/global.gdc"
        [remap]

path="res://main.gdc"
 [remap]

path="res://test/test.gdc"
            �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name          portfolio 2d Companion     application/run/main_scene         res://test/test.tscn   application/config/icon         res://icon.png     autoload/Global          *res://global/global.gd +   gui/common/drop_mouse_on_gui_input_disabled         ,   navigation/2d/default_edge_connection_margin        �A)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres       