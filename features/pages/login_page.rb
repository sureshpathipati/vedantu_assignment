class LoginPage < BasePage

	def google_login
		return find(:xpath, "//div[@data-cy='googleLogin']").click if page.has_selector?(:xpath, "//div[@data-cy='googleLogin']")
		find(:xpath, '//p[text()="Login or Create Account"]').click
		find(:xpath,"//span[text()='Login with Google']").click
		sleep(2)	
	end

	def sign_in_with(credentials)
		switch_to_window Capybara.windows[-1]
		find(:xpath, "//input[@type='email']").set credentials["Email"]
		click_button 'Next'
		find(:xpath, "//input[@type='password']").set credentials["Password"]
		click_button 'Next'
		sleep 5
		switch_to_window Capybara.windows.first
	end
end
