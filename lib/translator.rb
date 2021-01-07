require "yaml"
require "pry"

def load_library(path)
  emoji_hash = {
    "angel" => {:english => "O:)", :japanese => "☜(⌒▽⌒)☞"},
    "angry" => {:english =>">:(", :japanese =>"ヽ(ｏ`皿′ｏ)ﾉ"},
    "bored" => {:english => ":O", :japanese => "(ΘεΘ;)"},
    "confused" => {:english => "%)", :japanese => "(゜.゜)"},
    "embarrassed" => {:english => ":$" , :japanese => "(#^.^#)"},
    "fish" => {:english => "><>", :japanese =>"゜))))彡"},
    "glasses" => {:english => "8D", :japanese => "(^0_0^)"},
    "grinning" => {:english => "=D", :japanese => "(￣ー￣)"},
    "happy" => {:english =>":)", :japanese => "(＾ｖ＾)"},
    "kiss" => {:english =>   - ":*", :japanese => "(*^3^)/~☆"},
    "sad" => {:english =>":'(", :japanese => "(Ｔ▽Ｔ)"},
    "surprised" => {:english => ":o", :japanese => "o_O"},
    "wink" => {:english =>";)", :japanese => "(^_-)"}
  }
  emoji_hash
end

def get_english_meaning(path, emoticon)
  emoji = load_library(path)
  if emoji["angel"].has_value?(emoticon)
    return "angel"
  elsif emoji["angry"].has_value?(emoticon)
    return "angry"
  elsif emoji["bored"].has_value?(emoticon)
    return "bored"
  elsif emoji["bored"].has_value?(emoticon)
    return "bored"
  elsif emoji["confused"].has_value?(emoticon)
    return "confused"
  elsif emoji["embarrassed"].has_value?(emoticon)
    return "embarrassed"
  elsif emoji["fish"].has_value?(emoticon)
    return "fish"
  elsif emoji["glasses"].has_value?(emoticon)
    return "glasses"
  elsif emoji["grinning"].has_value?(emoticon)
    return "grinning"
  elsif emoji["happy"].has_value?(emoticon)
    return "happy"
  elsif emoji["kiss"].has_value?(emoticon)
    return "kiss"
  elsif emoji["sad"].has_value?(emoticon)
    return "sad"
  elsif emoji["surprised"].has_value?(emoticon)
    return "surprised"
  elsif emoji["wink"].has_value?(emoticon)
    return "wink"
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_japanese_emoticon(path, emoticon)
  emoji = load_library(path)
  if emoji["angel"].has_value?(emoticon)
    return emoji["angel"][:japanese]
  elsif emoji["angry"].has_value?(emoticon)
    return emoji["angry"][:japanese]
  elsif emoji["bored"].has_value?(emoticon)
    return emoji["bored"][:japanese]
  elsif emoji["confused"].has_value?(emoticon)
    return emoji["confused"][:japanese]
  elsif emoji["embarrassed"].has_value?(emoticon)
    return emoji["embarrassed"][:japanese]
  elsif emoji["fish"].has_value?(emoticon)
    return emoji["fish"][:japanese]
  elsif emoji["glasses"].has_value?(emoticon)
    return emoji["glasses"][:japanese]
  elsif emoji["grinning"].has_value?(emoticon)
    return emoji["grinning"][:japanese]
  elsif emoji["happy"].has_value?(emoticon)
    return emoji["happy"][:japanese]
  elsif emoji["kiss"].has_value?(emoticon)
    return emoji["kiss"][:japanese]
  elsif emoji["sad"].has_value?(emoticon)
    return emoji["sad"][:japanese]
  elsif emoji["surprised"].has_value?(emoticon)
    return emoji["surprised"][:japanese]
  elsif emoji["wink"].has_value?(emoticon)
    return emoji["wink"][:japanese]
  else
    return "Sorry, that emoticon was not found"
  end
end

