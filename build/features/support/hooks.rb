# frozen_string_literal: true

require 'report_builder'

Before do
    driver.start_driver
    driver.manage.timeouts.implicit_wait = 10
    
    @screens = AndroidScreens.new
end

After do
    screenshot = driver.screenshot_as(:base64)
    embed(screenshot, 'image/png', 'Screenshot')

    driver.quit_driver
end

at_exit do
    @infos = {
        'device' => DEVICE.upcase,
        'environment' => 'Local',
        'Data do Teste' => Time.now.to_s
    }
    ReportBuilder.configure do |config|
        config.input_path = 'log'
    end   
end