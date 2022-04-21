require_relative 'app'
require_relative 'menu'
require 'json'

class Main
  def initialize
    @app = App.new
    @app.read_files
  end

  def input
    gets.chomp
  end

  def menu
    ['List all Books', 'List all Labels', 'Add new Book', 'Add new Label', 'List all music', 'List all Genre', 'Create new music', 'Create new genre',
     'list_authors', 'add_author', 'list_all_game', 'add_game',
     'Exit'].each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end

  def list_options
    puts 'Welcome'
    loop do
      menu
      user_input = input
      break if user_input == '14'

      options(user_input)
    end
  end
end

Main.new.list_options
