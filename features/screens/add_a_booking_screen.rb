class AddABookingScreen < BaseScreen

  def title_text; xpath('//*[@name="Title"]/following-sibling::XCUIElementTypeStaticText') end

  def add_a_booking_title; text('Add a Booking') end
  def create_booking_button; button('create-booking-button') end
  def cancel_button; button('Cancel') end
  def party_size_button; xpath('//*[@name="Party Size"]/following-sibling::XCUIElementTypeStaticText') end
  def date_button; xpath('//*[@name="Date"]/following-sibling::XCUIElementTypeStaticText') end
  def time_button; xpath('//*[@name="Time"]/following-sibling::XCUIElementTypeStaticText') end
  def shift_button; xpath('//*[@name="Shift"]/following-sibling::XCUIElementTypeStaticText') end

  def choose_title; find_element(:name, 'title-pickerfield') end
  def title_pickerwheel; find_element(class:'XCUIElementTypePickerWheel') end
  def first_name; find_element(:name,'first-name-textfield') end
  def last_name; find_element(:name,'last-name-textfield') end
  def last_name_label; find_element(:name, 'Last Name') end
  def phone_number; find_element(:name,'phone-number-textfield') end
  def phone_number_label; find_element(:name, 'Phone Number') end
  def email_address; find_element(:name,'email-textfield') end
  def notes_field; find_element(:name,'notes-textfield') end

  def done_button; button('Done') end

  def create_basic_booking
    wait_true { create_booking_button.displayed? }
    choose_title.click
    title_pickerwheel.send_keys('Mr')
    first_name.send_keys("First")
    last_name_label.click
    last_name.send_keys("Last")
    phone_number_label.click
    phone_number.send_keys("12345678")
    email_address.send_keys("First.Last@12345678.com")
    notes_field.send_keys("Some random note")
    done_button.click
    wait_true { create_booking_button.displayed? }
  end

  def return_last_text_item(element)
    element.find_elements(:class, 'XCUIElementTypeStaticText').last.text
  end

  def get_current_booking_details
    swipe(direction: 'down')
    a = {
        party_size: party_size_button.text.to_i,
        date: date_button.text,
        time: time_button.text,
        shift: shift_button.text
    }
    swipe(direction: 'up')
    b = {
        title: return_last_text_item(choose_title),
        fname: first_name.text,
        lname: last_name.text,
        phone: phone_number.text,
        email: email_address.text,
        notes: notes_field.text,
      }
    a.merge(b)
  end
end

def add_a_booking_screen
  @add_a_booking_screen ||= AddABookingScreen.new
end