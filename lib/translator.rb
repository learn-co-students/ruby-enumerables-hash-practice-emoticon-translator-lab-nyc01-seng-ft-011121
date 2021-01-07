require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticon_hash = {}
  inner_hash = {}
  emoticons.each do |key, value|
    emoticon_hash[key] =
          {:english => value[0],
           :japanese => value[1]}
         end
         emoticon_hash
       end
def get_japanese_emoticon(file, e_emoticon)
  emoticons = load_library(file)
  j_emoticon = ""
  apology = "Sorry, that emoticon was not found"
  emoticons.each do |emotion, lang|
    lang.each do |inner_key, emoticon|
      if emoticon == e_emoticon
        j_emoticon = lang[:japanese]
      end
    end
  end
  if j_emoticon == ""
    j_emoticon = apology
  end
  j_emoticon
end

def get_english_meaning(file, j_emoticon)
  emoticons = load_library(file)
  eng_meaning = ""
  apology = "Sorry, that emoticon was not found"
  emoticons.each do |emotion, lang|
    lang.each do |inner_key, emoticon|
      if emoticon == j_emoticon
        eng_meaning = emotion
      end
    end
    if eng_meaning == ""
      eng_meaning = apology
    end
  end
  eng_meaning
end

         

