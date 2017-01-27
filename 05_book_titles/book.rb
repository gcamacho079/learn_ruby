conjunctions = ["the", "a", "an", "and", "in", "the", "of"]

class Book
  def initialize()

  end

  def title
    @title
  end

  def title=(value)
    @title = value
    proper_caps
  end

  def proper_caps
    @title =  @title.capitalize
  end

end

my_book = Book.new
my_book.title = "inferno"
