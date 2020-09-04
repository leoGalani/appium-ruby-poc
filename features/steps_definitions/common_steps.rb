# frozen_string_literal: true

Given(/^the user has opened the app and the app main page is displayed/) do
  @initial_page = InitialScreen.new
  expect(@initial_page.see_how_it_works.displayed?).to be true
end
