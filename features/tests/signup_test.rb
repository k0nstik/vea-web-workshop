class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_signup_page
    @pages.page_home.load
    @pages.page_home.visible?
    @pages.page_home.open_signup
  end

  def enter_signup_details(user)
    @pages.page_home.signup_enter_email user.email
    @pages.page_home.signup_enter_pass1 user.password
    @pages.page_home.signup_enter_pass2 user.password_again
    @pages.page_home.signup_enter_project_name user.project_name
  end

  def submit_signup_details
    user = Users.signup_user
    enter_signup_details(user)
    @pages.page_home.signup_close_signup
  end

  def submit_signup_details_no_again_password
    user = Users.signup_user_no_again_password
    enter_signup_details(user)
    @pages.page_home.signup_close_signup
  end

  def submit_signup_details_no_passwords
    user = Users.signup_user_no_passwords
    enter_signup_details(user)
    @pages.page_home.signup_click_get_started_button
  end

  def submit_signup_details_no_email
    user = Users.signup_user_no_email
    enter_signup_details(user)
    @pages.page_home.signup_click_get_started_button
  end

  def check_if_still_on_signup_page
    @pages.page_home.signup_get_started_button_visible?
  end
end
