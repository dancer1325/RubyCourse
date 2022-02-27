require_relative 'game'         # Load the file by relative path
require_relative 'user'

game = Game.new
user = User.new

puts game.game_method
puts user.user_method
puts user.admin_method