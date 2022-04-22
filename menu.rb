# rubocop:disable Metrics/CyclomaticComplexity
def options(num)
  case num
  when '1' then @app.list_all_books(@app.books)
  when '2' then @app.list_all_labels(@app.labels)
  when '3' then @app.add_book
  when '4' then @app.add_label
  when '5' then @app.list_all_music
  when '6' then @app.list_all_genre
  when '7' then @app.add_new_music
  when '8' then @app.add_new_genre
  when '9' then @app.list_authors(@app.authors)
  when '10' then @app.add_author
  when '11' then @app.list_all_game(@app.games)
  when '12' then @app.add_game
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
