require 'yaml'
require 'pry'

def load_library(path)
  new = {}
  YAML.load_file(path).each do |keys, value|
    emoticons = {:english => {}, :japanese => {}}
    english,japanese  = value
    emoticons[:english] = english
    emoticons[:japanese] = japanese
 
    new[keys] = emoticons
  
  end
  new
end
 
 
def get_japanese_emoticon(path, new)
   YAML.load_file(path)
  answer = emoticons[japanese][emoticon]
 
  if answer
    answer
  
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  answer = emoticons["the_emoticon"][emoticon]
  
  if answer
    answer
  
  else
    "Sorry, that emoticon was not found"
  end
end
 