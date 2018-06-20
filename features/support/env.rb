#  require 'cucumber'
# require 'appium_lib'
# require 'rspec'
# # require 'pry'
#
# # require_relative 'screen_actions'
# # require_relative 'united'
#
# APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "com.united.mobile.apk")
# DEFAULT_TIMEOUT = 20
#
# # To find appPackage and appActivity:
# # adb shell "dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'"
#
# def caps
#   { caps:       { deviceName: "Anyname",
#                   platformName: 'Android',
#                   # app: APP_PATH,
#                   app: File.join(File.dirname(__FILE__), "com.united.mobile.apk"),
#                   appPackage: "com.united.mobile.android",
#                    appActivity: "com.united.mobile.android.Main",
#                   newCommandTimeout: '3600'
#     # appium_lib: { wait: DEFAULT_TIMEOUT,
#     #               debug: false
#     #               }
#     }}
# end
#
# Appium::Driver.new(caps, true)
#
# Appium.promote_appium_methods Object
#
# # Appium::Driver.new(caps)
# # # Appium.promote_appium_methods ScreenActions
# # Appium.promote_appium_methods United
#
#
# # World do
# #   United.new
# # end
#

require "appium_lib"

Before do
  $driver.start_driver
end


After do
  $driver.driver_quit
end

def capabil
  { caps: {
      deviceName: "Anyname",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "com.united.mobile.apk")),
      appPackage: "com.united.mobile.android",
      appActivity: "com.united.mobile.android.Main",
      newCommandTimeout: "3600"
  }}
end
Appium::Driver.new(capabil, true)
Appium.promote_appium_methods Object










