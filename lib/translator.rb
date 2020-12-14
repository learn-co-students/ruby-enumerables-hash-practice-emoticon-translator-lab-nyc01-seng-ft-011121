require 'pry'
require 'yaml'


def load_library(emoticon_file)
  emoticon_list = YAML.load_file(emoticon_file)
  
  final_lib = {}
  
  emoticon_list.each do |description, language|
    
    english = language[0]
    japanese = language[1]
    
    if !final_lib[description]
    final_lib[description] = {}
    end
  
  final_lib[description][:english] = english
  final_lib[description][:japanese] = japanese
  end
  final_lib
end


def get_japanese_emoticon(emoticon_file, english_emoticon)
  emoticon_list = load_library(emoticon_file)
  
  result_check = english_emoticon
  emoticon_list.each do |description, language| 
    
    english = emoticon_list[description][:english]
    japanese = emoticon_list[description][:japanese]
  
  if english_emoticon == english
    english_emoticon = japanese
  end
end
if result_check == english_emoticon
  "Sorry, that emoticon was not found"
else
  english_emoticon
end
end

def get_english_meaning(emoticon_file, japanese_emoticon)
  emoticon_list = load_library(emoticon_file)
  
  english_meaning = ''
  
  emoticon_list.each do |description, language|
   
    japanese = emoticon_list[description][:japanese]
  
    if japanese_emoticon == japanese
      english_meaning = description
    end
  end
  if english_meaning == ''
    "Sorry, that emoticon was not found"
  else 
    english_meaning
  end
end