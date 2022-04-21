require_relative 'app'
require_relative 'menu'

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
     'Exit'].each_with_index do |option, index|
      puts "#{index + 1} - #{option}"
    end
  end

  def list_options
    puts 'Welcome'
    loop do
      menu
      user_input = input
      break if user_input == '9'

      options(user_input)
    end
  end
end

Main.new.list_options
