class Piglatinizer
    attr_reader :text
  def intialize(text)
    @text = text
  end

  def to_pig_latin
    phrase = text.split()
    phrase.map do |word|
      split = word.split(//,2)
      "#{split[1]}#{split[0].downcase}ay "
     end.join
  end
end
