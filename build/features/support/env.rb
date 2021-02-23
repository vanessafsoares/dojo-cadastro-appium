require 'appium_lib'
require 'appium_console'

Dir.mkdir('log') unless File.exist?('log')

DEVICE = ENV['DEVICE_TYPE']

caps = Appium.load_appium_txt file: File.expand_path("caps/#{DEVICE}/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object