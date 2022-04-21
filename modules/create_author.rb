module CreateAuthor
  def add_author
    puts 'add author'
    puts 'Enter first name'
    first_name = gets.chomp.to_s
    puts 'enter last name'
    last_name = gets.chomp.to_s
    @authors.push(Author.new(first_name, last_name))
    save_author
  end
end
