SimpleNavigation::Configuration.run do |navigation|
  navigation.autogenerate_item_ids = false
  navigation.selected_class = 'active'
  navigation.items do |primary|
    primary.item :books, 'Home', '/'
  end
end

