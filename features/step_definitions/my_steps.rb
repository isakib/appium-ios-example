Given(/^I have launched the iOS app$/) do
  wait_true { landing_screen.login_button.displayed? }
end

And(/^I have successfully signed in$/) do
  set_env_to_production

  wait_true { landing_screen.login_button.displayed? }
  landing_screen.login_button.click

  login_screen.sign_in_as(@test_data['username'], @test_data['password'])

  login_screen.confirm_keyboard_done

  wait_true { login_screen.login_button.displayed? }
  login_screen.login_button.click
  wait_true { bookings_screen.today_button.displayed? }
end

And(/^I add a basic booking$/) do
  expect(bookings_screen.currently_selected_menu_item).to eq('Bookings')
  bookings_screen.add_booking_button.click
  add_a_booking_screen.create_basic_booking
  current_booking_details = add_a_booking_screen.get_current_booking_details
  expect(current_booking_details[:fname]).to eq("First")
end

And(/^I am taken to the Bookings screen$/) do
  add_a_booking_screen.create_booking_button.click
  wait_true { button('Confirm') }
  button('Confirm').click
  wait_true { bookings_screen.date_button.displayed? }
end

Given(/^I bind$/) do
  binding.pry
end