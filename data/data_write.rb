def add_books
  File.write('./store/books.json', @books.to_json)
end

def add_labels
  File.write('./store/labels.json', @labels.to_json)
end

# def data_options
#   {
#     array_nl: "\n",
#     object_nl: "\n",
#     indent: '  ',
#     space_before: ' ',
#     space: ' '
#   }
# end

def add_music
  file = File.open('./store/music.json', 'w')
  music = @music.map do |album|
    { on_spotify: album.on_spotify, publish_date: album.publish_date, archived: album.archived }
  end
  file.puts(JSON.pretty_generate(music))
end

def add_genre
  file = File.open('./store/genre.json', 'w')
  genre = @genre.map do |album|
    { name: album.name }
  end
  file.puts(JSON.pretty_generate(genre))
end
