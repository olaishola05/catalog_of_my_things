require_relative './modules/create_books'
require_relative './modules/list_books'
require_relative './modules/list_labels'
require 'json'
require './data/data_read'
require './data/data_write'

class App
  attr_accessor :books, :labels

  include CreateBook
  include ListBooks
  include ListLabels

  def initialize
    @books = []
    @label = []
  end
end
