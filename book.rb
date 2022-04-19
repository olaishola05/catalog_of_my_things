require_relative './item'
require 'date'

class Book < Item
  attr_accessor :publish_date, :archived

  def initialize(publisher, cover_string)
    super(publish_date, archived: false)
    @publisher = publisher
    @cover_string = cover_string
  end

  def can_be_archived?
    @cover_string == 'bad'
  end
end

test_one = Item.new(Date.parse('2000-2-3'), archived: true)
test_child = Book.new('Jameson', 'bad')
puts test_one.can_be_archived?
puts test_child.can_be_archived?
