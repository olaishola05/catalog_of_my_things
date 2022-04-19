require_relative '../book'

describe Book do
  context '#initialize Book and test methods' do
    book = Book.new('Macmillian', 'Excellent')

    it 'should check the instance of book' do
      expect(book).to be_an_instance_of Book
    end

    it 'should return true if book can be archived' do
      not_archived = book.can_be_archived?
      expect(not_archived).to eql(false)
    end

    it 'should return false if book cannot be archived' do
      book = Book.new('Macmillian', 'bad')
      is_archived = book.can_be_archived?
      expect(is_archived).to eql(true)
    end
  end
end
