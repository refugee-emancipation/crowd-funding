require 'open-uri'

module Jekyll
  module VimeoThumbFilter
    def vimeo_thumb(id)
      JSON.parse(open("http://vimeo.com/api/v2/video/%s.json" % id).read).first['thumbnail_large']
    end
  end
end

Liquid::Template.register_filter(Jekyll::VimeoThumbFilter)
