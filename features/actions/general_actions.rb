module GeneralActions

  def set_env_to_production
    base_screen.invoke_developer_tools
    button('Production').click
    base_screen.close_developer_tools
  end

end

World(GeneralActions)