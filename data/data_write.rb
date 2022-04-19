def add_books(title, cover)
    file = File.open('./data/book.json', 'w')
    book = @books.map { |book| title: book.title, cover: book.cover_string }
    file.puts(JSON.pretty_generate(book))
end

def add_labels(title, color)
    file = File.open('./data/label.json', 'w')
    label = @labels.map { |label| title: label.title, color: label.color }
    file.puts(JSON.pretty_generate(label))
end