require_relative 'app'

class Main
  def initialize
    @app = App.new
  end

  def input
    gets.chomp
  end

  def menu
    puts 'Welcome'
    %W[
      List\ all\ Books
      List\ all\ Labels
      Add\ new\ Book
      Add\ new\ Label
      Music
      Genre
      Game
      Author
      Exit
    ].each_with_index { |option, index| puts "#{index + 1} - #{option}" }
  end

  def options(num)
    case num
    when '1' then puts @app.list_all_books(@app.books)
    when '2' then puts @app.list_all_labels(@app.labels)
    when '3' then puts @app.add_book
    when '4' then puts '4 method'
    when '5' then puts '5 method'
    when '6' then puts '6 method'
    end
  end

  def list_options
    puts 'Welcome'
    loop do
      menu
      user_input = input
      break if user_input == '7'

      options(user_input)
    end
  end
end

Main.new.list_options
