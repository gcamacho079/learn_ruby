def translate(word)
  vowels = ["a", "e", "i", "o", "u"]

  new_word = ""

  loop do
    count = 0
    vowels.each do |vowel|
      if word[0] == vowel
        count += 1
      end
    end
    break if count > 0
    new_word += word[0]
    word = word.slice(1, word.length)
  end


  return "#{word}" + "#{new_word}" + "ay"
end
