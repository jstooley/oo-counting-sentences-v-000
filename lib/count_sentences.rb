require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    how_many = []
    
    self.split(".", "?").each do |sentence|
      sentence.split("!").each do |sent|
        
            how_many << sent
          
      end
    end
    
    how_many.count do |sentence|
      sentence.length < 2
    end

  end
end
