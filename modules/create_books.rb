module CreateBook

    def create_book(publish_date, publisher, cover_string)
        @books.push(Book.new(publish_date, publisher, cover_string))
      end
    
      def create_label(title, color)
        @label.push(Label.new(title, color))
      end
    end
    
    def add_book
      puts 'Create a new book'
      print 'Enter Published Date [Enter date in format (yyyy-mm-dd)]: '
      publish_date = gets.chomp
      print 'Enter Book Publisher: '
      publisher = gets.chomp
      print 'Enter Cover String: '
      cover_string = gets.chomp
      create_book(publish_date, publisher, cover_string)
      puts "Book created successfully."
      add_books
    end
    

    def add_label(item = nil)
        puts 'Create a new label'
        print 'Enter Title: '
        title = gets.chomp
        print 'Enter Color: '
        color = gets.chomp
        create_label(title, color) if item.nil?
        label = Label.new(title, color)
        label.add_label(item)
        @label << label
        puts "Label created successfully."
        add_labels
    end
end