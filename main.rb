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
    %w[
      Books
      Label
      Music
      Genre
      Game
      Author
      Exit
    ].each_with_index { |option, index| puts "#{index + 1} - #{option}" }
  end

  def options(num)
    case num
    when '1' then puts @app.add_game
    when '2' then puts '2 method'
    when '3' then puts '3 method'
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