class Pages::Bbchomepage < SitePrism::Page

  set_url "http://www.bbc.co.uk/"
  set_url_matcher /bbc.co.uk/


  def click_sign_in_link
    click_link 'Sign in'
  end

  def capture_page_traffic
    page.driver.network_traffic.each do |request|
      request.response_parts.uniq(&:url).each do |response|
        File.open("traffic_log.txt", "a+") { |file| file.write("\n Responce URL #{response.url}:") }
      end
    end
  end


end
