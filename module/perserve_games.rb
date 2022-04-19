module PerserveGames
  def save_games
    games = []
    @games.each do |game|
      games.push({ publish_date: game.publish_date, _archived: game._archived, multiplayer: game.multiplayer,
                   last_played_at: game.last_played_at })
    end

    File.write('./store/games.json', JSON.generate(games))
  end

  def load_authors
    return [] unless File.exist?('./store/games.json')

    JSON.parse(File.read('./store/games.json')).map do |game|
      Game.new(game['publish_date'], game['_archived'], game['multiplayer'], game['last_played_at'])
    end
  end
end
