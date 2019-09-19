module FunWithStrings
  def palindrome?
    self.gsub(/\W/,'').downcase == self.gsub(/\W/,'').downcase.reverse
  end
  def count_words
    words = Hash.new
    self.downcase.gsub(/[^a-z\s]/,'').split.each do |word|
      if words[word] != nil
        words[word] += 1
        else
        words[word] = 1
      end
    end
    words
  end
  
  def anagram_groups
    words = self.scan(/\w+/)
    words.group_by { |word| word.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
