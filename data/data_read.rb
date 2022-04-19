def read_books
  if File.exist?('./data/book.json')
    file = File.read('./data/book.json')
    books = JSON.parse(file)
    books.map do |book|
      Book.new(book['publish_date'], book['publisher'], book['cover_state'])
    end
  else
    []
  end
end

def read_labels
  if File.exist?('./data/label.json')
    file = File.read('./data/label.json')
    labels = JSON.parse(file)
    labels.map do |label|
      Label.new(label['title'], label['color'])
    end
  else
    []
  end
end
