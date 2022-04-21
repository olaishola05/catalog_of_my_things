def add_books
  file = File.open('./store/book.json', 'w')
  books = @books.map do |book|
    { publish_date: book.publish_date, publisher: book.publisher, cover_state: book.cover_state }
  end
  file.puts(JSON.pretty_generate(books))
end

def add_labels
  file = File.open('./store/label.json', 'w')
  labels = @labels.map do |label|
    { title: label.title, color: label.color }
  end
  file.puts(JSON.pretty_generate(labels))
end

def data_options
  {
    array_nl: "\n",
    object_nl: "\n",
    indent: '  ',
    space_before: ' ',
    space: ' '
  }
end

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
