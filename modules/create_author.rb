module CreateAuthor
  def create_author(first_name, last_name)
    @authors.push(Author.new(first_name, last_name))
  end

  def add_author
    puts 'add author'
    puts 'Enter first name'
    first_name = gets.chomp.to_s
    puts 'enter last name'
    last_name = gets.chomp.to_s
    create_author(first_name, last_name)
    save_author
  end
end
