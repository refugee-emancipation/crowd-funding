require 'csv'
require 'yaml'

file '_data/press.yml' do |t|
  data = []
  CSV.foreach('RE Presseschau - Website-Daten.csv', headers: true) do |item|
    data << {
      'title' => {
        'de' => item['title-de'],
        'en' => item['title-en']
      },
      'author' => item['Autor'],
      'source' => item['Wer'],
      'date' => item['Datum'],
      'link' => {
        'de' => item['link-de'],
        'en' => item['link-en']
      }
    }
  end
  File.open(t.name, 'w') do |h|
    h.write(data.to_yaml)
  end
end
