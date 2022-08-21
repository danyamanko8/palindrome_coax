class Word
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def palindrome?
    word = @word.scan(/[^a-zA-Z]/)
    word == word.reverse
  end

  def word_size
    puts @word.length.to_i
  end

  def count_uniq_letters
    puts @word.chars.uniq.length
  end

  def all_letters_uniq?
    @word.chars.uniq.length == @word.length 
  end
end

try = Word.new('Wow')
puts try.palindrome?
puts try.word_size
puts try.count_uniq_letters
puts try.all_letters_uniq?
