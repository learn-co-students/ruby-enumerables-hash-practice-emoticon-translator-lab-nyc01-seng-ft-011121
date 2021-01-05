require "yaml"

def load_library(file)
    emoticons = YAML.load_file(file)
    new_emos = {}
    emoticons.each { |key, values|
        new_emos[key] = {english: values[0], japanese: values[1]}
    }
    return new_emos
end
  
def get_japanese_emoticon(file, ame_emo)
    emoticons = load_library(file)
    emoticons.each { |name, values|
        if values[:english] == ame_emo
            return values[:japanese]
        end
    }
    "Sorry, that emoticon was not found"
end

def get_english_meaning(file, jap_emo)
    emoticons = load_library(file)
    emoticons.each { |name, values|
        if values[:japanese] == jap_emo
            return name
        end
    }
    "Sorry, that emoticon was not found"
end