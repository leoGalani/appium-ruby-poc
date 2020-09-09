# frozen_string_literal: true

# Base screen objects for login form
class LoginForm < BaseScreen
  identificator(:email_input) { find_element(:id, 'edtEmail') }
  identificator(:password_input) { find_element(:id, 'edtPassword') }
end

# Screen objects for the Initial screen
class LoginScreen < LoginForm
  identificator(:log_in_button) { find_element(:id, 'action_signin') }
  identificator(:incorrect_credentials_msg) { find_element(:id, 'txtEmailOrPasswordWasIncorrect') }

  def sign_in(email, password)
    email_input.send_keys(email)
    password_input.send_keys(password)
    log_in_button.click
  end
end
