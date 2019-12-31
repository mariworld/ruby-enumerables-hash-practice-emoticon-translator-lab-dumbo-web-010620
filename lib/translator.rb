require 'yaml'
require 'pry'


def load_library(file_path)
    file_path = YAML.load_file('./lib/emoticons.yml')
    new_hash = {
      :get_meaning => {},
      :get_emoticon => {}
    }
    translate_hash = file_path.reduce({}) do |memo, key|
      new_hash[:get_meaning]["#{key[1][1]}"] = key[0]
      new_hash[:get_emoticon]["#{key[1][0]}"] = key[1][1]
      #new_hash[:get_meaning] = key[1][1]
      #binding.pry
      end
    new_hash
end
  

def get_japanese_emoticon(file_path = YAML.load_file('./lib/emoticons.yml'),emoticon)
  emo_list = load_library(file_path)
  if emo_list[:get_meaning]
    if emo_list[:get_meaning].keys == emo_list[get_meaning]
  end

end

def get_english_meaning
  # code goes here
end
