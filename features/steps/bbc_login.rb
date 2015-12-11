Given(/^I can access the BBC home page$/) do
  @bbc = Bbc.new
	@bbc.bbc_home.load
	@bbc.bbc_home.displayed?
end

Then(/^I am able to select sign in$/) do
  @bbc.bbc_home.click_sign_in_link
end

When(/^I enter my login details$/) do
	@bbc.bbc_sign_in.confirm_uncheck_of_rememeber_me
	@bbc.bbc_sign_in.enter_login_details
end

When(/^I click sign in$/) do
	@bbc.bbc_sign_in.sign_in_button.click
end

Then(/^I have I have been signed in$/) do
  expect(page).to have_selector('#idcta-username', text: "Your account")
end
