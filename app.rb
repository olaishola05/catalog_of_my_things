class App
  def list_all_books(books)
    puts "Sorry there's no available books at the moment, kindly proceed to add book" if books.empty?

    books.each { |book| puts "Publisher: \"#{book.publisher}\", Cover: #{book.cover_string}" }
    puts
  end

  def list_all_labels(labels)
    puts 'Sorry there is no label available' if labels.empty?
  end
end
