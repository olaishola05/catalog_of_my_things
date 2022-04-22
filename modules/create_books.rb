module CreateBook
  def create_book(publish_date, publisher, cover_state)
    @books.push(Book.new(publish_date, publisher, cover_state))
  end

  def create_label(title, color)
    @labels.push(Label.new(title, color))
  end

  def add_book
    puts 'Create a new book'
    print 'Enter Published Date [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp.to_s
    print 'Enter Book Publisher: '
    publisher = gets.chomp
    print 'Enter Cover String: '
    cover_state = gets.chomp
    create_book(publish_date, publisher, cover_state)
    puts 'Book created successfully.'
    add_books
  end

  def add_label(item = nil)
    puts 'Create a new label'
    print 'Enter Title: '
    title = gets.chomp
    print 'Enter Color: '
    color = gets.chomp
    create_label(title, color) if item.nil?
    puts 'Label created successfully.'
    add_labels
  end
end
