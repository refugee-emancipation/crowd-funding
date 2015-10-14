require 'csv'
require 'yaml'
require 'open-uri'

def clean(t)
   t.strip if t
end

file '_data/press.yml' do |t|
  sheet = 'https://docs.google.com/spreadsheets/d/1xkunaEW258tDvt-_iGai-IytvzKFWYVY3nxSfasWJak/pub?gid=607933394&single=true&output=csv'
  data = []
  CSV.new(open(sheet).read.force_encoding('utf-8'), headers: true).each do |item|
    puts item
    data << {
      'title' => {
        'de' => clean(item['title-de']),
        'en' => clean(item['title-en'])
      },
      'author' => clean(item['Autor']),
      'source' => clean(item['Wer']),
      'date' => clean(item['Datum']),
      'link' => {
        'de' => clean(item['link-de']),
        'en' => clean(item['link-en']),
      },
      'teaser' => {
        'de' => clean(item['teaser-de']),
        'en' => clean(item['teaser-en']),
      }
    }
  end
  File.open(t.name, 'w') do |h|
    h.write(data.to_yaml)
  end
end

