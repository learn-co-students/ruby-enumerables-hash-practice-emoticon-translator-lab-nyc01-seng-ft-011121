require "yaml"
require "pry"
def load_library(file_name)
data = YAML.load_file(file_name)
hash = {} 
data.each do |key, value|
  hash[key] = {:english => value[0], :japanese => value[1]}
end
hash

end

def get_japanese_emoticon(file_name, emoticon)
  hash = load_library(file_name)
  hash.each do |key, value|
    if value[:english] == emoticon 
      return value[:japanese]
    end
    
  end
   "Sorry, that emoticon was not found"
end

def get_english_meaning(file_name, emoticon)
   hash = load_library(file_name)
  hash.each do |key, value|
    if value[:japanese] == emoticon 
      return key
    end
    
  end
  # code goes here
  "Sorry, that emoticon was not found"
end




