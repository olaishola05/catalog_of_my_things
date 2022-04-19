module BookList
  def list_all_books(books)
    puts "Sorry there's no available books at the moment, kindly proceed to add book" if books.empty?

    books.each_with_index do |book, index|
      puts "#{index}: [Book] Publish Date: #{book.publish_date} Publisher: \"#{book.publisher}\"
             Cover: #{book.cover_string}"
    end
    puts
  end

  def label(item)
    puts "Label : Title: #{item.label.title} Color: #{item.label.color}" if item.label
  end
end
