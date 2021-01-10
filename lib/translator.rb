require "yaml"
def load_library (file)
  emotes = {}
  YAML.load_file(file).each do |key,value|
    emotes[key] = {}
    emotes[key][:english] = value [0]
    emotes[key][:japanese] = value [1]
  end
  emotes
    
  end
  
  def get_english_meaning (file,emoticon)
    load_library(file).each do |key,value|
      if value[:japanese] == emoticon
        return key
      end
    end
    return "Sorry, that emoticon was not found"
  end
    
  def get_japanese_emoticon(file,emoticon)
    load_library(file).each do |key,value|
      if value[:english] == emoticon
        return value[:japanese]
      end
    end
        return "Sorry, that emoticon was not found"
        
      end
      