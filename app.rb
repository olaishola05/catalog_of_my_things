require_relative './modules/create_books'
require_relative './modules/list_books'
require_relative './modules/list_labels'
require_relative './modules/list_music'
require_relative './modules/list_genre'
require_relative './modules/create_music'
require_relative './modules/create_author'
require_relative './modules/create_game'
require_relative './modules/list_authors'
require_relative './modules/list_games'
require_relative './book'
require_relative './label'
require 'json'
require './data/data_read'
require './data/data_write'
require_relative 'game'
require_relative 'author'

class App
  attr_accessor :books, :labels, :games, :authors

  include CreateBook
  include BookList
  include ListLabels
  include MusicList
  include GenreList
  include MusicAdd
  include ListAuthors
  include CreateGame
  include ListGame
  include CreateAuthor

  def initialize
    @books = []
    @labels = []
    @authors = []
    @games = []
    @music = []
    @genre = []
  end

  def read_files
    @books = read_books
    @labels = read_labels
    @music = read_music
    @authors = read_authors
    @games = read_games
  end
end
