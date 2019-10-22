local moreInfo = require "plugin.moreInfo"
moreInfo.init(true)
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
if(moreInfo.getColorMode() == "dark" ) then
    bg:setFillColor( 0 )
else
    bg:setFillColor( .5 )
end

Runtime:addEventListener("tap", function(e)
    native.setKeyboardFocus( nil )
end)

local testField = native.newTextField( display.contentCenterX, display.contentCenterY-140, 180, 20 )

local scale0X= ((display.actualContentWidth- display.contentWidth)*.5)*-1
local scale0Y= ((display.actualContentHeight- display.contentHeight)*.5)*-1
local keyboardWidth, keyboardHeight = moreInfo.getKeyboardSize()
local topOfKeyboard =  display.newText( "Top", display.contentCenterX, keyboardHeight+10, native.systemFontBold, 15)
topOfKeyboard:setFillColor(0,0,1)
local keyboardSize = display.newText( "Keyboard Height/Width:"..keyboardWidth.."/"..keyboardHeight, display.contentCenterX, display.contentCenterY-120, native.systemFontBold, 12)

local batteyLevel = display.newText( "battey at:"..moreInfo.getBatteryLevel(), display.contentCenterX, display.contentCenterY-100, native.systemFontBold, 15)

local getBatteryState = display.newText( "battey state:"..moreInfo.getBatteryState(), display.contentCenterX, display.contentCenterY-80, native.systemFontBold, 15) 

local getTotalSpace = display.newText( "Total Space mb:"..moreInfo.getTotalSpace(), display.contentCenterX, display.contentCenterY-60, native.systemFontBold, 15) 

local getTotalFreeSpace = display.newText( "Total Free Space mb:"..moreInfo.getTotalFreeSpace(), display.contentCenterX, display.contentCenterY-40, native.systemFontBold, 15) 
timer.performWithDelay( 3000, function( )
    print( moreInfo.getNetworkStatus() )
end, -1)
local getNetworkStatus = display.newText( "Network Status:"..moreInfo.getNetworkStatus(), display.contentCenterX, display.contentCenterY-20, native.systemFontBold, 15) 

local getPlaform = display.newText( "Plaform:"..moreInfo.getPlatform(), display.contentCenterX, display.contentCenterY, native.systemFontBold, 15)


timer.performWithDelay(2000, function() -- give a 2 second rest before calling
    local isMuted = display.newText( "", display.contentCenterX, display.contentCenterY+20, native.systemFontBold, 15)
    moreInfo.isMuted(function (e)
        isMuted.text = "is Muted:"..tostring(e.muted)
    end)
    if moreInfo.getPlatform() and moreInfo.getPlatform() == "iOS" then
        timer.performWithDelay(5000, function()
            moreInfo.isMuted(function(e)
                 isMuted.text = "is Muted:"..tostring(e.muted)
            end)
        end, -1)
    end
end)


local getTextureMemSize = display.newText( "Max Texture Mem Size:"..moreInfo.getMaxTextureMemorySize(), display.contentCenterX, display.contentCenterY+40, native.systemFontBold, 15)
local getTextureMemUnits = display.newText( "Max Texture Mem Units:"..moreInfo.getMaxTextureMemoryUnits(), display.contentCenterX, display.contentCenterY+60, native.systemFontBold, 15)
local isHeadsetPluggedIn = display.newText( "Is headset plugged in:"..tostring(moreInfo.isHeadsetPluggedIn()), display.contentCenterX, display.contentCenterY+80, native.systemFontBold, 15)

local getBluetoothStatus = display.newText( "Is bluetooth enabled?:"..tostring(moreInfo.isBluetoothEnabled()), display.contentCenterX, display.contentCenterY+100, native.systemFontBold, 15)

timer.performWithDelay(1000, function()
    keyboardWidth, keyboardHeight = moreInfo.getKeyboardSize()
    topOfKeyboard.y = display.actualContentHeight-keyboardHeight-10
    print(topOfKeyboard.y)

    keyboardSize.text = "Keyboard Height/Width:"..keyboardHeight.."/"..keyboardWidth
    isHeadsetPluggedIn.text = "Is headset plugged in:"..tostring(moreInfo.isHeadsetPluggedIn())
    topOfKeyboard:toFront()
    getBluetoothStatus.text="Is bluetooth enabled?:"..tostring(moreInfo.isBluetoothEnabled())
end, -1)

local getSettingFontSize = display.newText( "Setting Font Size:"..tostring(moreInfo.getSettingFontSize()), display.contentCenterX, display.contentCenterY+120, native.systemFontBold, 15)




