# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Workshop.delete_all
workshops = Workshop.create([
  {
    title: "Lorem",
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis convallis dolor a varius. Nulla ullamcorper et eros ac tempor. Vestibulum luctus faucibus lorem, eget ullamcorper felis dapibus at. Suspendisse blandit nulla in dignissim molestie. Proin maximus venenatis neque in laoreet. Sed non faucibus velit, eget mattis diam. Nam pharetra ex sit amet mi varius iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet est mi. Cras pellentesque ligula mi, non tempus erat rutrum ut.',
    type: 'in_house',
    audience_list: '12-14 jaar',
    tag_list: 'beweging, beeld'
  },{
    title: "Ipsum",
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis convallis dolor a varius. Nulla ullamcorper et eros ac tempor. Vestibulum luctus faucibus lorem, eget ullamcorper felis dapibus at. Suspendisse blandit nulla in dignissim molestie. Proin maximus venenatis neque in laoreet. Sed non faucibus velit, eget mattis diam. Nam pharetra ex sit amet mi varius iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet est mi. Cras pellentesque ligula mi, non tempus erat rutrum ut.',
    type: 'on_request',
    audience_list: '14-18 jaar',
    tag_list: 'nieuw, taal'
  },{
    title: "Dolor",
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis convallis dolor a varius. Nulla ullamcorper et eros ac tempor. Vestibulum luctus faucibus lorem, eget ullamcorper felis dapibus at. Suspendisse blandit nulla in dignissim molestie. Proin maximus venenatis neque in laoreet. Sed non faucibus velit, eget mattis diam. Nam pharetra ex sit amet mi varius iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet est mi. Cras pellentesque ligula mi, non tempus erat rutrum ut.',
    type: 'on_request',
    audience_list: '10-12 jaar',
    tag_list: 'muziek'
  },{
    title: "Sit amet",
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis convallis dolor a varius. Nulla ullamcorper et eros ac tempor. Vestibulum luctus faucibus lorem, eget ullamcorper felis dapibus at. Suspendisse blandit nulla in dignissim molestie. Proin maximus venenatis neque in laoreet. Sed non faucibus velit, eget mattis diam. Nam pharetra ex sit amet mi varius iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet est mi. Cras pellentesque ligula mi, non tempus erat rutrum ut.',
    type: 'in_house',
    audience_list: 'ouder+kind',
    tag_list: 'beeld, taal'
  },{
    title: "Quiue testam bleik",
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis convallis dolor a varius. Nulla ullamcorper et eros ac tempor. Vestibulum luctus faucibus lorem, eget ullamcorper felis dapibus at. Suspendisse blandit nulla in dignissim molestie. Proin maximus venenatis neque in laoreet. Sed non faucibus velit, eget mattis diam. Nam pharetra ex sit amet mi varius iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet est mi. Cras pellentesque ligula mi, non tempus erat rutrum ut.',
    type: 'on_request',
    audience_list: 'ouder+kind',
    tag_list: 'beweging'
  }
])
