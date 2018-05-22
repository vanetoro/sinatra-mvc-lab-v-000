class PigLatinizer
    attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    text = text.split()
    if @text == 'i'
      'Iway'
    else
      text.map do |word|
        split = word.split(/([aeiou])/,2)
        "#{split[1]}#{split[1]}#{split[0].downcase}ay"
       end.join
     end
   end
end
