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
