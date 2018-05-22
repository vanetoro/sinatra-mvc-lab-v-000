class PigLatinizer
    attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    text = text.split()

      text.map do |word|
        if word.length < 1
          binding.pry
        else
          split = word.split(/([aeiou])/,2)
          if split[0].empty?
            "#{split[2]}#{split[1].downcase}way"

            else
            "#{split[1]}#{split[2]}#{split[0].downcase}ay"
          end.flatten
        end
      end
   end
end
