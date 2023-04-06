# Refactored

ALPHABET = ("A".."Z").to_a

def encrypt(text)
  # create the alphabet (array)
  # convert the text into an array
  # map over the text array
  text.chars.map do |letter|
    # for each find its index in the alphabet
    # if it's a special character, we just leave it like that
    index = ALPHABET.index(letter) 
    # subtract -3 from the index
    index ? ALPHABET[index -3] :  letter
  end.join
  # join the map
end

# Before refactoring

# def encrypt(text)
#   # create the alphabet (array)
#   alphabet =  ("A".."Z").to_a
#   # convert the text into an array
#   # map over the text array
#   text.chars.map do |letter|
#     # for each find its index in the alphabet
#     # if it's a special character, we just leave it like that
#     if alphabet.include?(letter)
#       # subtract -3 from the index
#       alphabet[index -3]
#     else
#       letter
#     end
#   end.join # join the map (you can chain methods!)
# end

# p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
# => "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
