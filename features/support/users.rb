require 'date'
module Users
  def Users.signup_user
    @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
    @signup_user
  end

  def Users.signup_user_no_password
    @signup_user ||= User.new(email: 'test@test.com', password: '')
    @signup_user
  end

  def Users.signup_user_no_again_password
    @signup_user_no_again_password ||= User.new(email: 'test@test.com', password: 'passworddemo', password_again: '')
    @signup_user_no_again_password
  end
end

class User
  attr_reader :email, :password, :password_again, :project_name
  def initialize(email:, password:, password_again: nil, project_name: 'UIauto' + DateTime.now.strftime('%Q'))
    @email = email
    @password = password
    if password_again.nil?
      @password_again = @password
    else
      @password_again = password_again
    end
    # @project_name = 'UIauto' + DateTime.now.strftime('%Q')
    @project_name = project_name
  end
end

