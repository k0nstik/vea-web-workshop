Given(/^I am on Appimation sign up page$/) do
  # visit 'http://apimation.com'
  # find(:xpath, '//button[@id = "signup-b"]').click
  @tests.signup_tests.load_signup_page
  # @pages.page_home.load
  # @pages.page_home.visible?
  # @pages.page_home.open_signup
end

When(/^I submit signup details$/) do
  @tests.signup_tests.submit_signup_details
  # visit 'http://apimation.com'
  # find(:xpath, '//button[@id = "signup-b"]').click
  # @pages.page_home.signup_enter_email 'test@venta.lv'
  # @pages.page_home.signup_enter_passwords 'qwerty'
  # @pages.page_home.signup_enter_project_name 'MyProject'
  # sleep(2)
  # @pages.page_home.signup_close_signup


  # find(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]').send_keys 'test@venta.lv'
  # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]').send_keys 'qwerty'
  # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]').send_keys 'qwerty'
  # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]').send_keys 'MyProject'
 
  # find(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]').click

  sleep(3)
end

When(/^I submit signup details without again password$/) do
  @tests.signup_tests.submit_signup_details_no_again_password
end