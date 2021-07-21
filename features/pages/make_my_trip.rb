require_relative "./base_page"
require_relative "./hotel_details_page"
require_relative "./login_page"
require_relative "./home_page"

class MakeMyTrip

  def base_page
    BasePage.new
  end

  def hotel_details_page
    HotelDetailsPage.new
  end

  def login_page
    LoginPage.new
  end

  def home_page
    HomePage.new
  end
end