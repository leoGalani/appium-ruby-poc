# frozen_string_literal: true

# Screen objects for the Initial screen
class InitialScreen < BaseScreen
  identificator(:try_us_out) { find_element(:id, 'txtTryUsOut') }
  identificator(:see_how_it_works) { find_element(:id, 'seehowitwork') }
end
