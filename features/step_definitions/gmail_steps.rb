When('I login through GoogleSSO') do
  @make_my_trip.login_page.google_login
end

When('I Enter my credentials') do |credentials|
  email_details = credentials.rows_hash
  @make_my_trip.login_page.sign_in_with(email_details)
end

