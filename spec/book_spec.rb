require_relative '../book'

describe Book do
    context '#initialize Book and test methods' do
        book = Book.new('Macmillian', 'Excellent')
        it 'should return true if book can be archived' do
            is_archived = book.can_be_archived?
            expect(is_archived).to be true
        end

        it 'should return false if book cannot be archived' do
            not_archived = book.can_be_archived?
            expect(not_archived).to be false
        end

        it 'should check the instance of book' do
            is_book = book.is_instance_of?(Book)
            expect(is_book).to be true
        end

        it 'should return true if book can be move to archive' do
            book = book.move_to_archive
            expect(book).to be true
        end

        it 'should return nil if book cannot be move to archive' do
            book = book.move_to_archive
            expect(book).to be nil
        end
    end
end