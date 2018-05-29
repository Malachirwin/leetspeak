class String
  def leetspeak
    array_of_characters = self.split('')
    result = ''
    character_previous = ''
    array_of_characters.each do |character|
      if character == 'e'
        result += '3'
      elsif character == 'o'
        result += '0'
      elsif character == 'I'
        result += '1'
      elsif character == 's'
        if character_previous != ' ' && character_previous != ''
          result += 'z'
        else
          result += character
        end
      else
        result += character
      end
      character_previous = character
    end
    result
  end
end
