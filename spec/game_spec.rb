require '../game'

describe Game do
  context 'before each test in the game class' do
    before(:each) do
      @game = Game.new('2001-02-03', 5, '2007-02-03')
    end
    describe '#new' do
      it 'should take 3  parameters and returns an author object' do
        expect(@game).to be_an_instance_of Game
      end

      it 'should have a properties' do
        expect(@game.publish_date).to eql('2001-02-03')
        expect(@game.multiplayer).to eql(5)
      end

      it 'can archive game' do
        expect(@game.can_be_archived?).to eql(false)
      end
    end
  end
end
