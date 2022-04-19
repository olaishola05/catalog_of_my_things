require_relative '../book'

describe Book do
  context '#initialize Book and test methods' do
    book = Book.new(Date.parse('2016-2-3'), 'Macmillian', 'Excellent')

    it 'should check the instance of book' do
      expect(book).to be_an_instance_of Book
    end

    it 'should check the publisher of book' do
      expect(book.publisher).to eq 'Macmillian'
    end

    it 'should return the publish date of book' do
      expect(book.publish_date).to eq Date.parse('2016-2-3')
    end

    it 'should return the correct publish year of book' do
      expect(book.publish_date.year).to eq 2016
    end

    it 'should check the cover state of book' do
      expect(book.cover_state).to eq 'Excellent'
    end

    it 'should return true if book can be archived' do
      not_archived = book.can_be_archived?
      expect(not_archived).to eql(false)
    end

    it 'should return false if book cannot be archived' do
      book = Book.new(Date.parse('2016-2-3'), 'Macmillian', 'bad')
      is_archived = book.can_be_archived?
      expect(is_archived).to eql(true)
    end
  end
end
