# frozen_string_literal: true

When(/^the user click on the Try us out button/) do
  initial_page = InitialScreen.new
  initial_page.try_us_out.click

  how_it_works_page = HowItWorksScreen.new
  %w[screen1 screen2 screen3 screen4].each do
    expect(how_it_works_page.indicator.displayed?).to be true
    swipe_right_to_left
  end

  expect(how_it_works_page.create_free_account.displayed?).to be true
  expect(how_it_works_page.continue_without_account.displayed?).to be true
end
