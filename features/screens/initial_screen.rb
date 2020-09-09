# frozen_string_literal: true

# Screen objects for the Initial screen
class InitialScreen < BaseScreen
  identificator(:try_us_out) { find_element(:id, 'txtTryUsOut') }
  identificator(:see_how_it_works) { find_element(:id, 'seehowitwork') }
  identificator(:get_started) { find_element(:id, 'getstarted_layout') }
  identificator(:i_have_an_account) { find_element(:id, 'txthaveaccount') }
end
