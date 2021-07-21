class HotelDetailsPage < BasePage

	def choose_city(city_name)
	  find(:xpath, "//label[@for='city']", wait: 5).click
	  dropdown_ele = find_all(:xpath, '//ul[@class="react-autosuggest__suggestions-list"]/li').find{|ele| ele.text.include? city_name}
	  dropdown_ele.click
	end

	def choose_check_in(in_date)
		unless page.has_css? ".dateFiled", wait: 3
		  find(:xpath, "//label[@for='checkin']").click
		end
		date, month, year = in_date.split("-")
		date = date.to_i
		current_month = current_calendar_month
		while(!current_month.include? month)
			find(:xpath, "//span[contains(@class,'DayPicker-NavButton--next')]").click
			current_month = current_calendar_month
		end
		find_all(:xpath, "//div[@class='DayPicker-Body']").first.find_all(:xpath,"//div[@class='DayPicker-Day']")[date-1].click
	end

	def choose_check_out(out_date)
		unless page.has_css? ".dateFiled", wait: 3
		  find(:xpath, "//label[@for='checkout']").click
		end
		date, month, year = out_date.split("-")
		date = date.to_i
		current_month = current_calendar_month
		while(!current_month.include? month)
			find(:xpath, "//span[contains(@class,'DayPicker-NavButton--next')]").click
			current_month = current_calendar_month
		end
		find_all(:xpath, "//div[@class='DayPicker-Body']").first.find_all(:xpath,"//div[@class='DayPicker-Day']")[date-2].click
	end

	def choose_rooms_and_guest(adults, children, child_age)
	  find(:xpath, "//label[@for='guest']").click
	  find(:xpath, "//div[@class='addRooomDetails']//li[@data-cy='adults-#{adults}']").click
	  find(:xpath, "//div[@class='addRooomDetails']//li[@data-cy='children-#{children}']").click
	  find(:xpath, "//select[@class='ageSelectBox']").click
	  find(:xpath, "//option[@data-cy='childAgeValue-#{child_age}']").click
	  find(:xpath, "//button[@data-cy='submitGuest']").click
	  click_button 'Search'
	end

  def select_first_hotel
    find_all(:xpath, "//div[@id='Listing_hotel_0']").first.click
  end

  def remove_selected_filter
    find(:xpath, '//li//span[@class="latoBold"]/../a', wait: 3).click
  end

  def last_popular_filter
    find(:xpath, "//div[@id='POPULAR']/p/span").click
    find_all(:xpath, "//div[@id='POPULAR']/ul[@class='filterList']/li").last.click
  end

	def apply_cost_filter
	  locators = find_all(:xpath, "//div[@class='input-range__slider']", wait: 10)
	  min = locators.first
	  max = locators.last
	  min.drag_to(max)
	end

	def current_calendar_month
		find_all(".DayPicker-Caption").map{|ele| ele.text.downcase}.map{|month| month.tr("0-9", "")}.first
	end

end