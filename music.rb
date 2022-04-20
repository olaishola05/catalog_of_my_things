require_relative 'item'

class MusicAlbum < Item
	attr_accessor :on_spotify

	def initialize(on_spotify, publish_date, archived)
		super(publish_date, archived: false)
		@on_spotify = on_spotify
	end
end

music = MusicAlbum.new(true, '2020-09-09', true)

puts music