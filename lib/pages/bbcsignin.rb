class Pages::Bbcsignin < SitePrism::Page

  set_url "https://ssl.bbc.co.uk/id/signin?ptrt=http%3A%2F%2Fwww.bbc.co.uk%2Fhome%2Fcustomise"
  set_url_matcher /ssl.bbc.co.uk/

  element :username_field, "input[name='unique']"
  element :password_field, "input[name='password']"
  element :sign_in_button, "input[name='bbcid_submit_button']"

def confirm_uncheck_of_rememeber_me

  remember_me_tick_box = find(:css,'.checked')
  if remember_me_tick_box.visible? == true
    remember_me_tick_box.click
  end
end

def enter_login_details
  fill_in 'unique', :with => 'username'
  fill_in 'password', :with => 'password'
end



end
