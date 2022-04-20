module MusicList
  def list_all_music
    puts 'No music album added yet.' if @music.empty?
    @music.each_with_index do |album, index|
      puts "#{index} [Id: #{album.id}, Spotify: #{album.on_spotify}, Date: #{album.publish_date}]"
    end
  end
end
