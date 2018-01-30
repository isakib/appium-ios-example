class BookingsScreen < BaseScreen

  def today_button; find(:name, 'today-button') end
  def previous_button; find(:name, 'login-button') end
  def next_button; find(:name, 'login-button') end
  def date_button; xpath('//*[@name="Bookings"]/XCUIElementTypeStaticText[1]') end

  def bookings_button; button('Bookings') end
  def insights_button; button('Insights') end
  def add_booking_button; button('Add booking') end
  def venue_button; button('Venue') end
  def more_button; button('More') end

  def currently_selected_menu_item
    buttons.each {|x| return x.name if x.value == "1" }
  end

end

def bookings_screen
  @bookings_screen ||= BookingsScreen.new
end