require_relative 'item'

class Game < Item
  attr_accessor :last_played_at, :multiplayer, :publish_date

  def initialize(publish_date, multiplayer, last_played_at)
    super(publish_date, archived: false)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at) # '2001-02-03'
  end

  def can_be_archived?
    true if Date.today.year - @last_played_at.year > 2

    false
  end
end
