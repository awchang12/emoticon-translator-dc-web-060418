# require modules here
require 'pry'
require 'yaml'

def load_library(emoticon)
  # code goes here
  emotes = YAML.load_file(emoticon)
  
  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emotes.each do |meaning, text|
    emotes_english = text[0]
    emotes_japanese = text[1]
  
  library["get_meaning"][emotes_japanese] = meaning
  library["get_emoticon"][emotes_english] = emotes_japanese
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end