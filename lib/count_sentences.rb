require 'pry'

class String

  def sentence?
    self.end_with(".")
  end

  def question?
    self.end_with("?")
  end

  def exclamation?
    self.end_with("!")
  end

  def count_sentences
     para_array = self.split(".","?","!")
     para_array.delete_if do |sentence|
       sentence.length < 2 
     end
  end
end
