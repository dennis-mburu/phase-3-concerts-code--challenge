require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

daughtry = Band.new('daughtry', "carlifornia")
linkin = Band.new("Linkin Park", "New-York")
ms = Venue.new("Madison Square", "L.A")
hb = Venue.new("Holywood Bowl", "chicago")
superbowl = Concert.new("Jan 20 2023", daughtry, ms)
tomorrowland = Concert.new("Dec 24 2022", linkin, hb)
halftimeshow = Concert.new("Dec 31 2022", linkin, ms)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
