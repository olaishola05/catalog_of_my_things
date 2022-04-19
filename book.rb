require_relative './item'
require 'date'

class Book < Item
  attr_accessor :publisher

  def initialize(publish_date, publisher, cover_string)
    super(publish_date)
    @publisher = publisher
    @cover_string = cover_string
    @publish_date = publish_date
  end

  def can_be_archived?
    super || @cover_string == 'bad'
  end
end

