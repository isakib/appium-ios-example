class BaseScreen < AppiumWorld

  def hide_keyboard_if_visible
    begin
      hide_keyboard
    rescue
      puts 'looks like no keyboard was visible to hide'
    end
  end

  def invoke_developer_tools
    driver.shake
    wait_true { button('Close').displayed? }
  end

  def close_developer_tools
    button('Close').click
  end

  def confirm_keyboard_done
    button('Done').click
  end

end

def base_screen
  @base_screen ||= BaseScreen.new
end