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
    print 'Enter Cover State: '
    cover_state = gets.chomp
    create_book(publish_date, publisher, cover_state)
    puts 'Book created successfully.'
    add_books
    
    print 'Create new label: (y), or use already created label: (n) [Y/N] '
    get_option = gets.chomp.downcase == 'y'

    add_label_to_book(get_option)
  end

  def add_label_to_book(option)

    if option
      add_label(@books.last)
    elsif @labels.length.zero?
      puts 'No labels created yet. Please create a label first.'
      add_label(@books.last)
    else
      puts 'Select a label from the list below by index: '
      list_all_labels(@labels)
      get_index = gets.chomp.to_i
      @labels[get_index].add_item(@books.last)
      puts 'Book has been added to label successfully.'
    end
  end

  def add_label(item = nil)
    puts 'Create a new label'
    print 'Enter Title: '
    title = gets.chomp
    print 'Enter Color: '
    color = gets.chomp
    create_label(title, color) if item.nil?
    label = Label.new(title, color)
    label.add_item(item)
    @labels.push(label)
    add_labels
    puts 'Label created successfully.'
  end
end
