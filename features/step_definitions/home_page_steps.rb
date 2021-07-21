Given('I navigate to makemytrip') do
  @make_my_trip.home_page.goto_make_my_trip
end

When('I logout from the makemytrip site') do
  @make_my_trip.home_page.logout
end