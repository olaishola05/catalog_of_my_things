class Genre
  attr_accessor :name, :items, :id

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_music(item)
    @items << item
    item.genre = self
  end
end

gen = Genre.new('R&B')
puts gen
puts gen.id