require_relative './item'

class Label

    attr_reader :items, :item

    def initialize(title, color)
        @id = Random.rand(1...1000)
        @title = title
        @color = color
        @item = item
        @items = []
    end

    def add_item(item)
        @items.push(Item.new(item: @item)) unless @items.include?(Item.new(item: @item))
    end
end