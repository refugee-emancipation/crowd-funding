require 'uri'

module Jekyll
  module ImageThumbFilter
    def image_thumb(url)
      filepath = URI(url).path
      ext = File.extname(filepath)
      basename = File.basename(filepath, ext)
      dir = File.dirname(filepath)

      thumb = File.join('.', dir, 'thumbs', "#{basename}_thumb#{ext}") # NB: relative path
      return thumb if File.exists?(thumb)

      filepath
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageThumbFilter)
