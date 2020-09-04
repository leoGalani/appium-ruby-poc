# frozen_string_literal: true

require 'appium_lib'
require 'rspec/wait'
require 'active_support/time'

require_relative File.expand_path(File.dirname(__FILE__) + '/../screens/base_screen.rb')
require_relative 'common'

opts = {
  caps: {
    platformName: 'android',
    app: 'app-world-beta (1).apk',
    automationName: 'UiAutomator2',
    appPackage: 'vivino.web.app.beta',
    appActivity: 'com.sphinx_solution.Launcher',
    autoGrantPermissions: true
  },
  appium_lib: {
    wait_timeout: 30,
    wait_interval: 10,
    wait: 20
  }
}

Appium::Driver.new(opts, true)
Appium.promote_appium_methods Object

World(RSpec::Wait)
