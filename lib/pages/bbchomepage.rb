class Pages::Bbchomepage < SitePrism::Page

  set_url "http://www.bbc.co.uk/"
  set_url_matcher /bbc.co.uk/


  def click_sign_in_link
    click_link 'Sign in'
  end


end
