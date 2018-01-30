Before do |scenario|
  set_test_data
end

After do |scenario|
  if scenario.failed?
    name = scenario.name.split.join("_")
    screenshot("#{name}.png")
    embed("#{name}.png",'image/png',name)
  end
end
