require_relative 'app'

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

  def options(num)
    case num
    when '1' then puts @app.list_all_books(@app.books)
    when '2' then puts @app.list_all_labels(@app.labels)
    when '3' then puts @app.add_book
    when '4' then puts @app.add_label
    when '5' then puts @app.list_all_music
    when '6' then puts @app.list_all_genre
    when '7' then puts @app.add_new_music
    when '8' then puts @app.add_new_genre
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
