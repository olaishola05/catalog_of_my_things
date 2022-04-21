require_relative '../music'
require_relative '../genre'

module MusicOperations
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
    puts 'Published date [yyyy-mm-dd]:'
    publish_date = gets.chomp
    puts 'Is the music archived? (y/n)'
    archived = gets.chomp.downcase
    is_archived = choose(archived)
    music = MusicAlbum.new(on_spotify, publish_date, is_archived)
    unless @genre.empty?
      puts 'Select genre: '
      list_all_genre
      genre_id = gets.chomp.to_i
      music.genre = @genre[genre_id]
      @music.push(music)
    end
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

  def list_all_music
    puts 'No music album added yet.' if @music.empty?
    puts
    @music.each_with_index do |album, index|
      puts "#{index} [Id: #{album.id}, Spotify: #{album.on_spotify}, Date: #{album.publish_date}], Genre: #{album.genre.name}"
    end
    puts
  end

  def list_all_genre
    puts 'No genre added yet.' if @genre.empty?
    @genre.each_with_index { |genre, index| puts "#{index} [Id: #{genre.id}, Name: #{genre.name}]" }
    puts
  end
end
