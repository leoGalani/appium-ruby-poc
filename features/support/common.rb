# frozen_string_literal: true

require 'appium_lib'

def swipe_left_to_right
  Appium::TouchAction.new.swipe(
    start_x: window_size.width / 2,
    start_y: window_size.height / 2,
    end_x: window_size.width,
    end_y: window_size.height / 2
  ).perform
end

def swipe_right_to_left
  Appium::TouchAction.new.swipe(
    start_x: window_size.width / 2,
    start_y: window_size.height / 2,
    end_x: 10,
    end_y: window_size.height / 2
  ).perform
end

def window_size
  @driver.window_size
end
