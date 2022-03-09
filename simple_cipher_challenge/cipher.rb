class Cipher
  LETTERS_TRANSLATIONS = {
    'a' => 'z',
    'b' => 'y',
    'c' => 'x',
    'd' => 'w',
    'e' => 'v',
    'f' => 'u',
    'g' => 't',
    'h' => 's',
    'i' => 'r',
    'j' => 'q',
    'k' => 'p',
    'l' => 'o',
    'm' => 'n',
    'n' => 'm',
    'o' => 'l',
    'p' => 'k',
    'q' => 'j',
    'r' => 'i',
    's' => 'h',
    't' => 'g',
    'u' => 'f',
    'v' => 'e',
    'w' => 'd',
    'x' => 'c',
    'y' => 'b',
    'z' => 'a'
  }
  def self.encode(string)
    local_string = string.downcase.gsub(/\W/, '').chars

    local_string.map! do |char|
      sub(char)
    end
    bundle(local_string.join)
  end

  def self.sub(char)
    case char
    when ('a'..'z') then LETTERS_TRANSLATIONS[char]
    else char
    end
  end

  def self.bundle(string)
    array = []
    slice_index = 0
    while slice_index < string.size
      array << string.slice(slice_index, 5)
      slice_index += 5
    end
    array.join(' ')
  end
end
