require 'pry'

class PigLatinizer
   attr_accessor :words

   def piglatinize(word)
      break_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]

      vowels = ['a', 'e', 'i', 'o', 'u']
      if (vowels.include?(word[0].downcase) || break_words.include?(word.downcase)) && word.split(' ').length == 1
                                                                                    # we added this part becasue of length of passed in word
         word << "way"
      elsif word.split(' ').length == 1
         letter = word.split("")
         consonants = ""
         while !vowels.include?(letter[0])
            # word = "pork"
            # letter = ["p", "o", "r", "k"]
            # consonants = ""
            consonants << letter.shift
            # work = "pork"
            # letter ["o", "r", "k"] 
            # consonants = "p"
            #word = word.split("")[1..-1].join
         end
         letter.join('') + consonants + 'ay'
         else
            to_pig_latin(word)
         end
   end


      def to_pig_latin(words)
         words.split(" ").collect do |word|
            piglatinize(word)
         end.join(" ")
      end

end
