require 'allure-cucumber'
require 'capybara/cucumber'
require 'pry'
require_relative '../pages/make_my_trip.rb'

BROWSER = ENV['BROWSER'] == nil ? :selenium : ENV['BROWSER'].to_sym
MAKEMYTRIP = 'https://www.makemytrip.com/'

Capybara.default_selector = :css
Capybara.default_driver = BROWSER
Capybara.default_host = MAKEMYTRIP
Capybara.default_max_wait_time = 10
window = Capybara.current_session.driver.browser.manage.window
window.resize_to(1280, 800)

Before do |scenario|
  @make_my_trip = MakeMyTrip.new()
end

include AllureCucumber::DSL

AllureCucumber.configure do |c|
  FileUtils.rm_rf(Dir['./allure'])
  Dir.mkdir('allure')
  c.output_dir = "allure/"
end

FileUtils.rm_rf(Dir['artifacts'])

unless Dir.exists?('artifacts')
  Dir.mkdir('artifacts')
end

