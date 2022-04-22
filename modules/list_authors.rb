module ListAuthors
  def list_authors(authors)
    puts "Sorry there's no available authors at the moment, kindly proceed to add an author" if authors.empty?

    authors.each { |author| puts "id: #{author.id} - #{author.first_name} #{author.last_name}" }
  end
end
