require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

giles = Author.new("Giles")
thomas = Author.new("Thomas")

sports_illustrated = Magazine.new("Sports Illustrated", "sports")
top_gear = Magazine.new("Top Gear", "cars")

 ferrari = giles.add_article("Ferrari 458", top_gear)
us_open = giles.add_article("US Open", sports_illustrated)
superbowl = giles.add_article("Superbowl", sports_illustrated)
march_madness = thomas.add_article("March Madness", sports_illustrated)
Pry.start
