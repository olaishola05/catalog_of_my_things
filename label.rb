require_relative './item'

class Label
  attr_reader :items, :archived, :publish_date, :id

  def initialize(title, color, publish_date, _archived)
    super(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(Item.new(item)) unless @items.include?(Item.new(item))
    item.label = self
  end
end
