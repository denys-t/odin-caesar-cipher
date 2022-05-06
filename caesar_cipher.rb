def caesar_cipher(phrase, shift)
  letters_array = phrase.split("")

  new_array = letters_array.map do |letter|
    upper_case = (letter == letter.upcase)

    if letter.downcase.ord in 97..122
      new_code = letter.downcase.ord + shift

      if new_code > 122 
        new_code -= 26
      elsif new_code < 97
        new_code += 26
      end

      new_letter = new_code.chr
    else
      new_letter = letter
    end

    letter = upper_case ? new_letter.upcase : new_letter
  end

  new_array.join
end