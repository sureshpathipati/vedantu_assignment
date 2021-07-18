# Problem Statement

# Implement Automation Framework for Hotel Bookings on https://www.makemytrip.com/

# Implementation Scenarios
# ● Login or Signup into the site using Google Sign On
# ● You are required to book a Hotel. Go Ahead and Select Hotel Section
# ● The Hotel stay is for a Single Room and is being booked for a family of 3 with 2 Adults and 1
# Child of Age 2 years. They are supposed to stay in Bengaluru for 1 day and exactly 1 week
# from now. Ignore the optional fields on the website and proceed to Search.
# ● Apply a cost filterforINR X to INR Y. Here X and Y are some dynamic amount inputs eg: 500,
# 1000
# ● Select the First available Hotel that you see in the filtered list
# ● Go Back to the Previous Search Window and Remove the Selected Filter
# ● Select the Last Option from “Popular Filters” Section and Select the First available Hotel that
# you get from the filtered list
# ● Logout from the site

# Important Considerations
# ● Please make sure that none of the inputs are not hardcoded
# ● Test summary or Report should be published using some reporting tool of your choice
# ● Create a new temporary Google account to perform the end to end test and share credentials

Feature: Simple Hotel Booking on MakeMyTrip

Scenario: To Validate succesful hotel booking on the makemytrip site
  Given I navigate to makemytrip
  When I Choose Login
  And I login through GoogleSSO
  And I Enter my credentials
    | Email    | forassignments.suresh@gmail.com 	|
    | Password | bangalore2401										|
  Then  I should see MakeMyTrip Home Page
  When 