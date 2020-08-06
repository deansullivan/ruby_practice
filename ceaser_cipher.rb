# Creates a Ceaser Cipher to enrypt a message by shifting letters.
def ceaserCipher(message, textShift)
    encryption = {
    'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 'j' => 10, 'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' => 18, 's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26
    }
    
    originalMessage = message.chars #Converts message to an array
    encryptedMessage = []
    
    textShift = textShift % 26 if textShift >= 27
  
    originalMessage.map { |letter| 
  
    checkLetter = letter
  
    if checkLetter.downcase != checkLetter.upcase # Checks to see if 'letter' is number or symbol
      if checkLetter == checkLetter.downcase
        letterValue = encryption[letter] + textShift
        letterValue -= 26 if letterValue >= 27 # Looping from Z to A when shifting letters
        newLetterValue = encryption.key(letterValue)
        encryptedMessage.push(newLetterValue)
      else checkLetter == checkLetter.upcase 
        letter = letter.downcase
        letterValue = encryption[letter] + textShift
        letterValue -= 26 if letterValue >= 27
        newLetterValue = encryption.key(letterValue).upcase
        encryptedMessage.push(newLetterValue)
      end
    else
      encryptedMessage.push(letter)
    end
    }
  
    
    #Oh yeah, its all coming together
    outputMessage = encryptedMessage.join()
    p outputMessage
  end
  
  
  p 'Enter a message you want encrypted: '
  message = gets.chomp
  p "The original message was: '#{message}'"
  p "Encrypting. . . . . . . . ."
  ceaserCipher(message, 6)
  