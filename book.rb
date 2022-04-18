require_relative './item'
require 'date'

class Book < Item
  def initialize(publisher, cover_string)
    super(publish_date, archived)
    @publisher = publisher
    @cover_string = cover_string
    @publish_date = publish_date
    # @archived = archived
  end

  def can_be_archived?
    Date.Today.year > @publish_date.year || @cover_string == 'bad' ? true : false
  end
end
