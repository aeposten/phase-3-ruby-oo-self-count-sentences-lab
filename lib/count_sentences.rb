require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end

s1 = String.new("This is a string! It has three sentences. Right?")