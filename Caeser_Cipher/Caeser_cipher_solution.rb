def caesar_cipher(text, shift)
  array_string = text.split('')

  deciphered_array = array_string.map do |elm|
    if elm.ord.between?(65,90)
      rotation = (((elm.ord - 65) + shift) % 26) + 65
      output = rotation.chr
    elsif elm.ord.between?(97, 122)
      rotation = (((elm.ord - 97) + shift) % 26) + 97
      output = rotation.chr
    else
      output = elm
    end

    output
  end
  puts deciphered_array.join('')
  return deciphered_array.join('')
end

puts caesar_cipher("I am ama'zing", 3)