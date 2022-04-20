require_relative './modules/create_books'
require_relative './modules/list_books'
require_relative './modules/list_labels'
require_relative './book'
require_relative './label'
require 'json'
require './data/data_read'
require './data/data_write'
require_relative 'game'

class App
  attr_accessor :books, :labels, :games, :authors

  include CreateBook
  include BookList
  include ListLabels
  include MusicList
  include GenreList
  include MusicAdd

  def initialize
    @books = []
    @labels = []
    @authors = []
    @games = []
    @music = read_music
    @genre = []
  end

  def add_game
    puts 'Add game'
    puts 'Enter publish date "2003-02-11"'
    published_date = gets.chomp.to_s
    puts 'Enter number of player'
    multiplayer = gets.chomp.to_i
    puts 'Last played at date'
    last_played_at = gets.chomp.to_s
    game = Game.new(published_date, multiplayer, last_played_at)
    @games.push(game)
  end

  def list_games
    @games.each do |game|
      puts "id: #{game.id} - game #{game.name} - published-date: #{game.published_date}
- number of players #{game.multiplayer} - played at: #{game.last_played_at}"
    end
  end

  def add_author
    puts 'add author'
    puts 'Enter first name'
    first_name = gets.chomp.to_s
    puts 'enter last name'
    last_name = gets.chomp.to_s
    author = Author.new(first_name, last_name)
    @authors.push(author)
  end

  def list_authors
    @authors.each { |author| puts "id: #{author.id} - #{author.first_name} #{author.last_name}" }
  end

  def read_files
    @books = read_books
    @labels = read_labels
  end
end
