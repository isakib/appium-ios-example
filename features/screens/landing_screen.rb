class LandingScreen < BaseScreen

  def signup_button; find('signup-button') end
  def login_button; find('login-button') end

end

def landing_screen
  @landing_screen ||= LandingScreen.new
end