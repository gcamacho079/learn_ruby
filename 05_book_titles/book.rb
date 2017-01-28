
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
    conjunctions = ["the", "a", "an", "and", "in", "the", "of"]
    book_title = @title.split(" ")

    book_title.each do |to_check|
      count = 0
      conjunctions.each do |reference_word|
        if to_check == reference_word
          count += 1
        end
      end
      unless count > 0
        to_check.capitalize!
      end
    end

    book_title[0].capitalize!
    @title = book_title.join(" ")
  end

end
