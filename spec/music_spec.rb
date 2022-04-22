require_relative '../music'

describe MusicAlbum do
  context 'Test methods in music' do
    album = MusicAlbum.new(true, Date.parse('1990-09-09'), archived: false)

    it 'Check instance of music' do
      expect(album).to be_instance_of MusicAlbum
    end

    it 'test can_be_archived? method in music class' do
      expect(album.can_be_archived?).to be true
    end
  end
end
