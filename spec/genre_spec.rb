require_relative '../genre'
require_relative '../item'

describe Genre do
  context 'Test methods in genre' do
    before :each do
      @genre = Genre.new('R&B')
    end

    it 'Check instance of genre' do
      expect(@genre).to be_instance_of Genre
    end

    it 'Check instance of items in genre' do
      expect(@genre.items).to be_instance_of Array
    end

    it 'Should add item in array' do
      item = Item.new(Date.parse('2022-2-3'), archived: true)
      @genre.add_music(item)
      expect(@genre.items.length).to be 1
    end
  end
end