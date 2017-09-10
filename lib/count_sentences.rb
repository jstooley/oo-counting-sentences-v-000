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

    self.split(".").each do |sent_1|
      sent_1.split("!").each do |sent_2|
        sent_2.split("?").each do |sent_3|

            how_many << sent_3

          end
      end
    end

    how_many.count do |sentence|
      sentence.length > 2
    end

  end
end
