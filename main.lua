local moreInfo = require "plugin.moreInfo"

local batteyLevel = display.newText( "battey at:"..moreInfo.getBatteryLevel(), display.contentCenterX, display.contentCenterY-100, native.systemFontBold, 15)

local getBatteryState = display.newText( "battey state:"..moreInfo.getBatteryState(), display.contentCenterX, display.contentCenterY-80, native.systemFontBold, 15) 

local getTotalSpace = display.newText( "Total Space mb:"..moreInfo.getTotalSpace(), display.contentCenterX, display.contentCenterY-60, native.systemFontBold, 15) 

local getTotalFreeSpace = display.newText( "Total Free Space mb:"..moreInfo.getTotalFreeSpace(), display.contentCenterX, display.contentCenterY-40, native.systemFontBold, 15) 

local getNetworkStatus = display.newText( "Network Status:"..moreInfo.getNetworkStatus(), display.contentCenterX, display.contentCenterY-20, native.systemFontBold, 15) 

local getPlaform = display.newText( "Plaform:"..moreInfo.getPlaform(), display.contentCenterX, display.contentCenterY, native.systemFontBold, 15) 