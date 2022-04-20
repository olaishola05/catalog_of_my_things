module PreserveGame
  def save_authors
    authors = []
    @authors.each do |author|
      authors.push({ first_name: author.first_name, last_name: author.last_name, id: author.id })
    end

    File.write('./store/authors.json', JSON.generate(authors))
  end

  def load_authors
    return [] unless File.exist?('./store/authors.json')

    JSON.parse(File.read('./store/authors.json')).map do |author|
      Author.new(author['first_name'], author['last_name'], author['id'])
    end
  end
end
