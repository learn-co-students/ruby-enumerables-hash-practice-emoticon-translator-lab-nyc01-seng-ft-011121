# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  #puts emoticons

  usable_emoticons = {}
  #add keys to new hash
  emoticons.each do |x,y|
    usable_emoticons[x] = {}
  end
  #puts usable_emoticons

  emoticons.each do |x,y|
    if usable_emoticons.key?(x)
      usable_emoticons[x] = {
        english: emoticons[x][0],
        japanese: emoticons[x][1]}
    end
  end

  usable_emoticons.map do |x,y|
    x.to_sym
  end



  usable_emoticons






end

def get_japanese_emoticon (file, emoji)
  dictionary = load_library(file)
  dictionary.each do |x,y|
    if dictionary[x][:english] == emoji
      return dictionary[x][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"

end

def get_english_meaning(file, emoji)
  # code goes here
  dictionary = load_library(file)
  dictionary.each do |x,y|
    if dictionary[x][:japanese] == emoji
      return x
    end
  end
  return "Sorry, that emoticon was not found"
end
