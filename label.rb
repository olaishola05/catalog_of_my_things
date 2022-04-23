require_relative './item'

class Label
  attr_reader :items, :title, :color, :id

  def initialize(title, color)
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.add_label(self)
  end

  def to_json(*args)
    {
      'label' => self.class.name,
      'title' => @title,
      'color' => @color,
      'items' => @items
    }.to_json(*args)
  end
  
end
