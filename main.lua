local moreInfo = require "plugin.moreInfo"


local batteyLevel = display.newText( "battey at:"..moreInfo.getBatteryLevel(), display.contentCenterX, display.contentCenterY-100, native.systemFontBold, 15)

local getBatteryState = display.newText( "battey state:"..moreInfo.getBatteryState(), display.contentCenterX, display.contentCenterY-80, native.systemFontBold, 15) 

local getTotalSpace = display.newText( "Total Space mb:"..moreInfo.getTotalSpace(), display.contentCenterX, display.contentCenterY-60, native.systemFontBold, 15) 

local getTotalFreeSpace = display.newText( "Total Free Space mb:"..moreInfo.getTotalFreeSpace(), display.contentCenterX, display.contentCenterY-40, native.systemFontBold, 15) 

local getNetworkStatus = display.newText( "Network Status:"..moreInfo.getNetworkStatus(), display.contentCenterX, display.contentCenterY-20, native.systemFontBold, 15) 

local getPlaform = display.newText( "Plaform:"..moreInfo.getPlatform(), display.contentCenterX, display.contentCenterY, native.systemFontBold, 15)

timer.performWithDelay(2000, function() -- give a 2 second rest before calling
    if moreInfo.getPlatform() and moreInfo.getPlatform() == "iOS" then
        local isMuted = display.newText( "is Muted:"..tostring(moreInfo.isMuted()), display.contentCenterX, display.contentCenterY+20,   native.systemFontBold, 15)
        timer.performWithDelay(1000, function()
            isMuted.text = "is Muted:"..tostring(moreInfo.isMuted())
        end, -1)
    end
end)


local getTextureMemSize = display.newText( "Max Texture Mem Size:"..moreInfo.getMaxTextureMemorySize(), display.contentCenterX, display.contentCenterY+40, native.systemFontBold, 15)
local getTextureMemUnits = display.newText( "Max Texture Mem Units:"..moreInfo.getMaxTextureMemoryUnits(), display.contentCenterX, display.contentCenterY+60, native.systemFontBold, 15)



local isHeadsetPluggedIn = display.newText( "Is headset plugged in:"..tostring(moreInfo.isHeadsetPluggedIn()), display.contentCenterX, display.contentCenterY+80, native.systemFontBold, 15)
timer.performWithDelay(1000, function()
    isHeadsetPluggedIn.text = "Is headset plugged in:"..tostring(moreInfo.isHeadsetPluggedIn())
end, -1)
