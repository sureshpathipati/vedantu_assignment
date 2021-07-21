class HomePage < BasePage

  def goto_make_my_trip
    visit MAKEMYTRIP
  end

  def logout
    find(:xpath, "//div[@id='loginTrigger']//div/div").click
    find(:xpath, '//a[@data-cy="userMenuLogout"]').click
  end

  def choose_hotels
    find(:xpath, "//li[@data-cy='menu_Hotels']").click
  end
end