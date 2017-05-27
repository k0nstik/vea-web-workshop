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
  end

  def visible?
    @video_frame.visible?
    @try_now_button.visible?
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

  def signup_close_signup()
    @signup_close_button.click
  end
  

  def login_enter_email(email)

    end

  def load
    visit('/')
  end
end
