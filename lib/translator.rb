# require modules here

require "yaml"

def load_library(path)
  yaml_hash = YAML.load_file(path)
  lib_hash = {}
  
  yaml_hash.each do |o_key, o_val| 
    lib_hash[o_key] = { :english => o_val[0],
                        :japanese => o_val[1]}
  end
  lib_hash
end



def get_japanese_emoticon(path, e_emote)
  lib = load_library(path)
  result = ""
  
  lib.each do |o_key, o_val|
    if lib[o_key][:english] == e_emote
      result = lib[o_key][:japanese]
    end
  end
  if result.length == 0 
    return "Sorry, that emoticon was not found"
  end
  result
end


def get_english_meaning(path, j_emote)
  lib = load_library(path)
  result = ""
  
  lib.each do |o_key, o_val|
    if lib[o_key][:japanese] == j_emote
      result = o_key.to_s
    end
  end
  if result.length == 0 
    return "Sorry, that emoticon was not found"
  end
  result
end