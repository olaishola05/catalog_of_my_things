describe Label do
    context '#initialize Label and test methods' do
        new_label = Label.new('Book Title', 'Yellow')

        it 'should return true if new_label is an instance of Label' do
            label = new_label.is_instance_of?(Label)
            expect(label).to be true
        end

        it "should return 'Book Title' if new_label's title is 'Book Title'" do
            title = new_label.title
            expect(title).to eq('Book Title')
        end

        it 'should return Yellow if new_label color is Yellow' do
            color = new_label.color
            expect(color).to eq('Yellow')
        end

        it 'shold return true length 1' do
            label = new_label.add_item
        end
    end
end