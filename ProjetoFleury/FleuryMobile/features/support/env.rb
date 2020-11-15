require "appium_capybara"
require "appium_lib"

def caps

{ caps: 
    {	
 		deviceName: "SM_A105M",
        platformName: "Android",
        app: (File.join(File.dirname(__FILE__),"Fleury.apk")) 
	}
}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
