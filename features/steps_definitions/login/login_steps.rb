Then(/^the user should not be able to access the wrong credentials/) do |credentials|
  log_in_page = LoginScreen.new
  expect(log_in_page.email_input.displayed?).to be true

  credentials.hashes.each do |credential|
    log_in_page.sign_in(credential['email'], credential['password'])
    expect(log_in_page.incorrect_credentials_msg.displayed?).to be true
  end
end
