class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @video_frame = Element.new(:xpath, '//div[@id = "video"]')
    @try_now_button = Element.new(:xpath, '//button[@id = "start_button"]')
    @signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]')
    @signup_password1 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @signup_password2 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @signup_project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @signup_close_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')
    @signup_get_started_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::button[@type = "submit"]')

    @login_button = Element.new(:xpath, '//button[@id = "login-b"]')
    @login_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @login_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]')
    @login_submit_button = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')
  end

  def visible?
    @video_frame.visible?
    @try_now_button.visible?
  end

  def signup_get_started_button_visible?
    @signup_get_started_button.visible?
  end

  def open_signup
    @try_now_button.click
  end

  def signup_enter_email(email)
    @signup_email.send_keys email
  end

  def signup_enter_pass1(password1)
    @signup_password1.send_keys password1
  end
  
  def signup_enter_pass2(password2)
    @signup_password2.send_keys password2
  end

  def signup_enter_passwords(password)
      signup_enter_pass1 password
      signup_enter_pass2 password
  end
  
  def signup_enter_project_name(name)
    @signup_project_name.send_keys name
  end

  def signup_click_get_started_button
    @signup_get_started_button.click
  end

  def signup_close_signup()
    @signup_close_button.click
  end

  def open_login
    @login_button.click
  end

  def login_enter_email(email)
    @login_email.send_keys email
  end

  def login_enter_pass(password)
    @login_password.send_keys password
  end

  def login_submit_button
    @login_submit_button.click
  end

  def login_submit_button_visible?
    @login_submit_button.visible?
  end

  def load
    visit('/')
  end
end
