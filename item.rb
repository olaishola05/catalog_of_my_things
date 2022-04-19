require 'date'

class Item
  attr_accessor :genre, :author, :source, :label

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    # Date.today.year - @publish_date.year > 10
    true
  end

  def move_to_archive
    can_be_archived? ? @archived = true : puts('Item cannot be archived')
  end
end

date = Item.new(Date.parse('2000-2-3'), archived: true)
puts date.can_be_archived?
puts date.move_to_archive
