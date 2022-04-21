require_relative '../music'
require_relative '../genre'

module MusicAdd
  def choose(value)
    case value
    when 'y'
      true
    when 'n'
      false
    else
      puts 'Please pick a value "Y" or "N".'
    end
  end

  def add_new_music
    puts 'Add new music'
    puts 'Is the album present on spotify? (y/n)'
    spotify = gets.chomp.downcase
    on_spotify = choose(spotify)
    puts "spotify #{on_spotify}"
    puts 'Published date [yyyy-mm-dd]:'
    publish_date = gets.chomp
    puts 'Is the music archived? (y/n)'
    archived = gets.chomp.downcase
    is_archived = choose(archived)
    puts "archived #{is_archived}"
    @music.push(MusicAlbum.new(on_spotify, publish_date, is_archived))
    puts 'New album added!'
    add_music
  end

  def add_new_genre
    puts 'Add new genre'
    puts 'Enter name: '
    name = gets.chomp
    @genre.push(Genre.new(name))
    puts 'New genre created!'
    add_genre
  end
end
