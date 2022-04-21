module ListGame
  def list_all_game(games)
    puts "Sorry there's no available games at the moment, kindly proceed to add a game" if games.empty?

    games.each do |game|
      puts "id: #{game.id}  - number of players #{game.multiplayer} - played at: #{game.last_played_at}"
    end
  end
end
