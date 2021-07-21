When('I search hotels with following details') do |hotel_details|
  hotel_details = hotel_details.rows_hash
  @make_my_trip.home_page.choose_hotels
  @make_my_trip.hotel_details_page.choose_city(hotel_details['place'])
  @make_my_trip.hotel_details_page.choose_check_in(hotel_details["CheckIn"])
  @make_my_trip.hotel_details_page.choose_check_out(hotel_details["CheckOut"])
  @make_my_trip.hotel_details_page.choose_rooms_and_guest(hotel_details['adult'], hotel_details['child'], hotel_details['childage'])
end

# cost values are not being used here
When('I apply cost filter with following details') do |table|
  @make_my_trip.hotel_details_page.apply_cost_filter
end

When('I select the first available hotel') do
  @make_my_trip.hotel_details_page.select_first_hotel
end

When('I go back previous search page') do
  Capybara.windows.last.close
end

When('I reset back the price filter') do
  @make_my_trip.hotel_details_page.remove_selected_filter
end

When('I select the last option from popular filters') do
  @make_my_trip.hotel_details_page.last_popular_filter
end