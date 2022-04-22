module CreateGame
  def create_game(published_date, multiplayer, last_played_at)
    @games.push(Game.new(published_date, multiplayer, last_played_at))
  end

  def add_game
    puts 'Add game'
    puts 'Enter publish date "2003-02-11"'
    published_date = gets.chomp.to_s
    puts 'Enter number of player'
    multiplayer = gets.chomp.to_i
    puts 'Last played at date'
    last_played_at = gets.chomp.to_s
    create_game(published_date, multiplayer, last_played_at)
    puts 'game created successfully.'
    save_game
  end
end
