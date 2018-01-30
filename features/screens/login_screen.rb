class LoginScreen < BaseScreen

  def email_textfield; textfield('email-textfield') end
  def password_textfield; textfield('password-textfield') end

  def sign_in_as(username,password)
    wait_true { email_textfield.displayed? }
    email_textfield.send_keys(username)
    password_textfield.send_keys(password)
  end

end

def login_screen
  @login_screen ||= LoginScreen.new
end