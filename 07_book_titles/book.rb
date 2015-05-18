class Book

  attr_reader :title

	def title=(title)
    mini_words = %w(a an to in and of the)
		maxi_words = title.split(" ").map do |word|
      if mini_words.include?(word)
        word
      else
        word.capitalize
      end
    end
    maxi_words.first.capitalize!
    @title = maxi_words.join(" ")
  end
end

# book = Book.new
# book.title = "inferno"