require 'uri'

module Jekyll
  module ImageThumbFilter
    def image_thumb(url)
      unless @context.registers[:site].config['baseurl'].empty?
        puts "WARN this has not been tested with site.baseurl != \"\", returning url"
	return url
      end

      filepath = URI(url).path
      ext = File.extname(filepath)
      basename = File.basename(filepath, ext)
      dir = File.dirname(filepath)

      thumb = File.join(dir, 'thumbs', "#{basename}_thumb#{ext}")
      return thumb if File.exists?(File.join('.', thumb)) # NB: test relative path

      filepath
    end
  end
end

Liquid::Template.register_filter(Jekyll::ImageThumbFilter)
