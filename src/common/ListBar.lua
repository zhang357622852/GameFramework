aJ�v���%J� ��J!�rNB��v��tG��]bݧ�"������J��|�`L`.`m�\ЯGPy�M�j�x@��TV��/�Y�6���|8�T��#��o�ot��f�Z�~�t�}ˆ	�>� �� �fC�����q<�E��c91C��X����d�6nm��ڪ(m�J�F�0��:qD�r��w�e�	@�{� �D��0]��\E���1KWu�bC��>������e����n�px�2�d�Q���}Q|@~����Zy�̢!VI3V67��>o�|{B� �eHnZ���Y\G�B��.R���p	��;�S=�P�3(�#)C��n����_h�Mֻ�#�����PՊ	Q7�y�b��{�'��S�^���Xd�M8=I�b�E4ݵ�W5��`�Xm���->��,����lm�%�j���-�"�#��!#{�hlc�;���f��ʽ�#'��^o"4�
��LG�I��x)x�]fLJ+ҿ=Ye�c����ō����&�~�xp�#�<,1�����
�:�zxJNT�a��*��0IVqJ�2��h�ݼ2��߹
'_�\D��\�F��G���t&�����i�N=���F��Q��:�K�c3lΜ����9�^�3��zJq��[����9���:o-ܵ{��% +���)�Ư,v�0�	�j����V'��!��ƇW�8�;%�ű u�Jxl��j�K#���L)�?a鱭�qAcR� ���7VS*�����ٸy��Ǧ��|	+�=a���G9����'�����8����l���P¸��h���h��Ϳ��[���'q �Y0��u6�"�F�1�P���ŋ��qؑ2n%5�%�0����v
��������Y'щ�Q�PL^ȌO>g�!=�����1q\5�ٜ�+�'p�ީ掫�x�w���i���ب����:KY̒�"������2��٤��詏�}Xbp����"����ܹ�7��e_�9����S��9�?���>s��!����+������ҎP2�\�_�.�}��֠�Q��o�����ó���;#�[���!�*�=p���_����y0��-�P��v��m#�����7����z}sg��.�V�ﭵ��>��@=+�<�Q_"��A�e�LJ�����aR^�\fr�!!�9�9fS����^��?솸#<�G���֓�/�I�(���(a���5[��#Q�v��]����ç�w��˧ԟ53ak�N}v� ��L�?w;�;'��(g���K��ɓ<��K1y?���|&��z��=y��NSp�X��z��Ӧt�-����
�eŹ�#�֣в�lD��O�����*:��1B3� #�q�v!�u⼈ࡖ)�����?o�0z�G����7�X����|�\P��{�DX��>t�7}����	���n��X�}@i,N�m�&Ȳ��p��U�ַ�k�<c�T��S������TKP��b��!���;����l+���	[20LJi��w�f_�l��a *[o"&�V�P��i6��֥*��ƐY��~�>��d�����[E��%4���X?)_��l�����EFq0��AɎ�Rh$��/�X��pq ��Nq����!��9ILq��Zˬ�Pxı+���������]xL�v`y�\�����EY�����i��&,���D�G	��	�q���L�A4�bt���[�t�zDm�`v����+�U�8���L̲�E9?����p`X����B+�Y W����Y �+���98�+�)9���y�Ѐ.�>�ж?b�N���Q8}S�ٝ�@�q��ܰ���8���l�x�����刡���
���^��1_����tj���s� \@e�֎����Qf����2��Nԓ͙b�" �w��c���c��p�@0��2��؎CG�������l۬s���-2V��vf�����Yog�q�G���X�&��^���g���ͥ�V��
�aH�w�� ��/����70��UKƲ���v��X��ü�N_p����lVد��+�8�=�'��3��K�-�����xG <v��bo�QQk�6O1���˭V=͜�|&v/���!IL��	���7�� ���Xg'���s"���a�Qi���&�wuh�e�SI!����Բ�:P�^Q�� O�,n�1�峂)WLv[	�,��N��P{O���V�jP1,�#��O��/-�Hr�@SY�L C����T{fN>�Օ�ng��.>0���X��
� �o�e��ҵ8�W�m�k�%2̅���u�,�$��V'{�3)������iV����B��A�p�,�/����{�"��ʲ4�`5����޳]u�h��fm`����l֥Sj]��Ɍ�Vn�Z�e݀Ca�L"�f7�Y�a�1�i��F;]�:}�As�Oi����6ܵ�I�*���(���1��J�E�P�dө#D��X~*�#���aϤ٘��>B\K"�&H�T��ܽp�U�i�?N$�x�Ah5�Ny7������A�ZGsterMouseEvent()
    local function onMouseUp(event)
        if self._callback then
            if self._lastIndex ~= 0 then
                self._callback(self._lastIndex)
            end
        end
    end
   
    local function onMouseMove(event)
        local x = event:getCursorX()
        local y = event:getCursorY()   
        local pos = self:convertToNodeSpace(cc.p(x, y))--这里跟self的锚点无关，都是从self左下角为原点
        
        local num = 0
        for i,v in pairs(self._sps) do
            if cc.rectContainsPoint(v:getBoundingBox(), pos) then
                v:setVisible(true)
                self._labels[i]:setTextColor(self._fontColor)
                
                if self._lastIndex~=0 then                
                    if  self._lastIndex~=i then
                        self._sps[self._lastIndex]:setVisible(false)
                        self._labels[self._lastIndex]:setTextColor(cc.c3b(0, 0, 0))
                        cc.SimpleAudioEngine:getInstance():playEffect("audio/click_1.wav")
                    end
                else
                    cc.SimpleAudioEngine:getInstance():playEffect("audio/click_1.wav")
                end             
                self._lastIndex = i         
                break
            else
                v:setVisible(false)
                self._labels[i]:setTextColor(cc.c3b(0, 0, 0))
            end
            num = num + 1
        end
        if num == #self._sps then--鼠标不在ListBar范围内
            self._lastIndex = 0
        end
    end

    
    local listener = cc.EventListenerMouse:create()
    listener:registerScriptHandler(onMouseUp, cc.Handler.EVENT_MOUSE_UP)
    listener:registerScriptHandler(onMouseMove, cc.Handler.EVENT_MOUSE_MOVE)
    self._listener = listener
    
    self:getEventDispatcher():addEventListenerWithSceneGraphPriority(listener, self)
end




