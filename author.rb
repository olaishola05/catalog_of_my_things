class Author
  attr_accessor :last_name, :first_name, :items, :id

  def initialize(first_name, last_name, id = rand(1...1000))
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end

author = Author.new('join', 'kim');

puts author.id

