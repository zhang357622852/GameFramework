+��舱O8Z:��$�e�����29�:	�7�Z�
�0��/�i*L��=��)�9= +��,O��� �̬ IyhF�p���:�mf.���6�tW=>��Y!n/(�Q5v��@*�n|HE
����g|̣"����DY���	��C ��R
��8nD����~Azsm�u]�Sl�dycC�!���:
m.��%Ls|�����Iyy�N~�c�*��T��C7mB��.e�u˻�tg9;�ܣ�!k�v��J�ɨBhj�<��-��R�z�֖��U�Љ޹ʫj;篮��X1&]��Y��o� �2]�]}~�G�Z�?Sǐ�S���q�"�t\�t��C����_�;m�ƒ�VTE-%������_!L�m���m����G���q`]�� �g>5:��v o����-o<$�(��>�ӣ��A��[%����0n6r��ONf�-�E�hiIW{���+������AED\I��N��$d�K���e|{m��Ι���nd

local function main()
    collectgarbage("collect")
    -- avoid memory leak
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 5000)

    -- initialize director
    local director = cc.Director:getInstance()

    --turn on display FPS
    director:setDisplayStats(true)

    --set FPS. the default value is 1.0/60 if you don't call this
    director:setAnimationInterval(1.0 / 60)
    
    local designResolutionSizeX = 720
    local designResolutionSizeY = 1280
    local designResolutionSizeType = 3
    cc.Director:getInstance():getOpenGLView():setDesignResolutionSize(designResolutionSizeX, designResolutionSizeY, designResolutionSizeType)
    
    --create scene 
    local gameScene = GameScene.create()
    
    if cc.Director:getInstance():getRunningScene() then
        cc.Director:getInstance():replaceScene(gameScene)
    else
        cc.Director:getInstance():runWithScene(gameScene)
    end

end


local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    --error(msg)
end
