class App
  attr_accessor :books, :labels

  def initialize
    @books = []
    @label = []
  end

  def list_all_books(@books)
    puts "Sorry there's no available books at the moment, kindly proceed to add book" if @books.empty?

    @books.each { |book| puts "Publisher: \"#{book.publisher}\", Cover: #{book.cover_string}" }
    puts
  end

  def list_all_labels(@labels)
    puts 'Sorry there is no label available' if @labels.empty?
    @label.each { |label| puts "Title: #{label.title}, Color: #{label.color}" }
  end


  def create_book(publisher, cover_string)
    @books.push(Book.new(publisher, cover_string))
  end

  def create_label(title, color)
    @label.push(Label.new(title, color))
  end
end
