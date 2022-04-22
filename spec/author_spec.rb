require_relative '../author'
require_relative '../game'

describe Author do
  context 'before each test in the game class' do
    before(:each) do
      @author1 = Author.new('jones', 'jin')
      @author2 = Author.new('hill', 'kim', 45)
      @game = Game.new('2001-02-03', 5, '2001-02-03')
    end
    describe '#new' do
      it 'should take 3 or 2 parameters and returns an author object' do
        expect(@author1).to be_an_instance_of Author
      end

      it 'should have a firstname' do
        expect(@author1.first_name).to eql('jones')
        expect(@author2.first_name).to eql('hill')
      end

      it 'should have a last name' do
        expect(@author1.last_name).to eql('jin')
        expect(@author2.last_name).to eql('kim')
      end

      it 'should add game to author' do
        @author1.add_item(@game)
        expect(@author1.items.length).to eql(1)
        expect(@author2.items.length).to eql(0)
      end
    end
  end
end
