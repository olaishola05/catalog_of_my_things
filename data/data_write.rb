def add_books
  file = File.open('./data/book.json', 'w')
  books = @books.map do |book|
    { title: book.title, cover: book.cover_state }
  end
  file.puts(JSON.pretty_generate(books))
end

def add_labels
  file = File.open('./data/label.json', 'w')
  labels = @labels.map do |label|
    { title: label.title, color: label.color }
  end
  file.puts(JSON.pretty_generate(labels))
end
