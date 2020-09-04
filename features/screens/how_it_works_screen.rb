# frozen_string_literal: true

# Screen objects for the tutorial screen (how it works / try us out)
class HowItWorksScreen < BaseScreen
  identificator(:create_free_account) { find_element(:id, 'create_free_account') }
  identificator(:continue_without_account) { find_element(:id, 'continue_without_account') }
  identificator(:indicator) { find_element(:id, 'indicator') }
end
