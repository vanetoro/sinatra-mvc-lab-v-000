class PigLatinizer
    attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    text = text.split()
    if @text == 'i'
      'Iway'
    else
      vowels = 'aeiou'
      text.map do |word|
        split = word.split(/([aeiou])/,2)
        if vowels.include? lig[-1]
            "#{split[1]}#{split[2]}#{split[0].downcase}way"
          else
              "#{split[1]}#{split[2]}#{split[0].downcase}ay"
            end
       end.join
     end
   end
end
