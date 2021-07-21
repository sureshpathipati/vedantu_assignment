# Vedantu
Following tools are used while completing this assignment
- Language: Ruby
- Framework: Cucumber
- Browser Interaction Library: Selenium(Capybara)

## Pre-Requisite
1. Ruby

## Steps to run this suite
1. clone or Download the repository
2. Navigate to cloned folder
3. Run the following command to install all project dependencies
	```bash
		bundle install
	```
4. In order to execute the scenario, run the following command	
	```bash
		bundle exec cucumber assignment.feature --format html --out report.html
	```
5. Open the report.html in order see execution status


## Problem Statement

Implement Automation Framework for Hotel Bookings on https://www.makemytrip.com/

### Implementation Scenarios
- Login or Signup into the site using Google Sign On
- You are required to book a Hotel. Go Ahead and Select Hotel Section
- The Hotel stay is for a Single Room and is being booked for a family of 3 with 2 Adults and 1 Child of Age 2 years. They are supposed to stay in Bengaluru for 1 day and exactly 1 week
from now. Ignore the optional fields on the website and proceed to Search.
- Apply a cost filterforINR X to INR Y. Here X and Y are some dynamic amount inputs eg: 500,
1000
- Select the First available Hotel that you see in the filtered list
- Go Back to the Previous Search Window and Remove the Selected Filter
- Select the Last Option from “Popular Filters” Section and Select the First available Hotel that
you get from the filtered list
- Logout from the site


### Important Considerations
- Please make sure that none of the inputs are not hardcoded
- Test summary or Report should be published using some reporting tool of your choice
- Create a new temporary Google account to perform the end to end test and share credentials


## Sample Report
![Report](https://user-images.githubusercontent.com/60173090/126521088-ef4efb05-c012-4def-b4c4-3dcefb9e85d6.png)
