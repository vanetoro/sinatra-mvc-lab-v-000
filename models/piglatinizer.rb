class PigLatinizer
    attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    text = text.split()
    text.map do |word|
      split = word.split(//,2)
      "#{split[1]}#{split[0].downcase}ay"
     end.join
  end

end
