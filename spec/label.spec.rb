require_relative '../label'
require_relative '../item'

describe Label do
  context '#initialize Label and test methods' do

    before(:each) do
        @label = Label.new('Book Title', 'Yellow')
    end

    it 'should return true if label is an instance of Label' do
      expect(@label).to be_instance_of(Label)
    end

    it 'should have an items array' do
      expect(@label.items).to be_an_instance_of Array
    end

    it 'shold return true length 1' do
      item = Item.new(Date.parse('2016-2-3'), archived: false)
      @label.add_item(item)
      expect(@label.items.length).to eql(1)
    end

    it 'shold return true length 2' do
      item = Item.new(Date.parse('2016-2-3'), archived: false)
      item_two = Item.new(Date.parse('2016-2-3'), archived: false)
      @label.add_item(item)
      @label.add_item(item_two)
      expect(@label.items.length).to eql(2)
    end
  end
end
