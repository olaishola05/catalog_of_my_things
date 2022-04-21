def read_books
  if File.exist?('./store/book.json')
    file = File.read('./store/book.json')
    books = JSON.parse(file)
    books.map do |book|
      Book.new(book['publish_date'], book['publisher'], book['cover_state'])
    end
  else
    []
  end
end

def read_labels
  if File.exist?('./store/label.json')
    file = File.read('./store/label.json')
    labels = JSON.parse(file)
    labels.map do |label|
      # Label.new(label['title'], label['color'])
      n_label = add_label(label)
      @labels.push(n_label)
    end
  else
    []
  end
end

def add_label(label)
  new_label = Label.new(label['title'], label['color'])
  new_label.id = label['id'].to_i
  new_label
end

def read_music
  file = './store/music.json'
  data = []
  if File.exist?(file)
    JSON.parse(File.read(file)).each do |album|
      data.push(MusicAlbum.new(album['on_spotify'], album['publish_date'], album['archived']))
    end
  end
  data
end

def read_genre
  file = './store/genre.json'
  data = []
  if File.exist?(file)
    JSON.parse(File.read(file)).each do |album|
      data.push(Genre.new(album.name))
    end
  end
  data
end
