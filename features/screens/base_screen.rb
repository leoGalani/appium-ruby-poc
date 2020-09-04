# frozen_string_literal: true

require 'appium_lib'

# Element definer for screen objects
class BaseScreen
  def self.identificator(element_name, &block)
    define_method(element_name.to_s, *block)
  end

  class << self
    alias value identificator
    alias action identificator
    alias trait identificator
  end
end
