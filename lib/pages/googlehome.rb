class Pages::Googlehome < SitePrism::Page

set_url "https://www.google.co.uk"
set_url_matcher /google.co.uk/

element :search_field, "input[name='q']"
element :search_button, "button[name='btnG']"



end

