module GenreList
  def list_all_genre
    puts 'No music album added yet.' if @genre.empty?
    @genre.each_with_index { |genre, index| puts "#{index} [Id: #{genre.id}, Name: #{genre.name}]" }
    puts
  end
end
