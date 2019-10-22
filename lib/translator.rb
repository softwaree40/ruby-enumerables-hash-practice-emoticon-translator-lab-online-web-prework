require  "pry"
require "yaml"


def load_library(file)
   emoticons = YAML.load_file("./lib/emoticons.yml")
   emoticons
   new = Hash.new
   if !new.has_key?('get_meaning')
      new['get_meaning'] = {}
   # binding.pry
   end
   if !new.has_key?('get_emoticon')
     new['get_emoticon'] = {}
   end
   emoticons.each do |key,value|
     new['get_meaning'][value[1]] = key
     new['get_emoticon'][value[0]] = key
     
    # binding.pry 
   end
   return new
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end