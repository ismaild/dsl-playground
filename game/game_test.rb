require_relative 'game_dsl'

add_game("Starcraft", "PC", 1998) { realtime strategy }
add_game("Doom", "PC", 1993) { fps action }
add_game("Duke Nukem 3D", "PC", 1996) { fps action }
add_game("Quake", "PC", 1996) { fps action }
add_game("Tekken", "playstation", 1994) { fighter action arcade }
add_game("Street Fighter", "arcade", 1987) { fighter action arcade }


puts "printing fps games..."
with_games_tagged "fps" do 
  print_details
end
puts

puts "grabbing screenshot..."
with_game "Starcraft" do 
  capture_screenshot
end
puts

puts "playing..."
with_game "Street Fighter" do 
  play
end
puts

puts "quotes.."
with_game "Duke Nukem 3D" do 
  say '"Hail to the king, baby!"'
end
puts