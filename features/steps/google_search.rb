
Given(/^I can access the Google home page$/) do
	@app = App.new
	@app.google_home.load
	@app.google_home.displayed?
end

And(/^I search for dogs$/) do
	@app.google_home.search_field.set "dogs"
	@app.google_home.search_button.click

end

Then(/^I receive google search responses for dogs$/) do
	page.assert_selector('h2', :text => 'Search Results')
	page.has_content?('tototototot')

end

