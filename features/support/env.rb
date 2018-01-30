require 'require_all'
require 'rspec'
require 'appium_lib'
require 'rspec/expectations'
require 'pry'
require 'faker'
require 'yaml'


APP_PATH = './some_app.app.zip'


def desired_caps
  {
      caps: {
          platformName: 'iOS',
          deviceName:  'iPhone 8',
          versionNumber:  '11.2',
          app: APP_PATH,
          automationName: 'XCUITest',
          newCommandTimeout: '3000',
          udid: 'FC99C881-49F7-4219-A111-AE4C319F4E1D' #to run on a specific simulator
      },
      appium_lib: {
          sauce_username: nil, # don't run on sauce
          sauce_access_key: nil,
          wait: 10,
      }
  }
end


class AppiumWorld
end

def set_test_data
  @test_data = YAML.load_file('features/support/test_data.yml')
end

$driver = Appium::Driver.new(desired_caps, true)

Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end