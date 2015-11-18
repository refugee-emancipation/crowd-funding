require 'open-uri'

module Jekyll
  module VideoThumbFilter
    def video_thumb(url)
      vimeo_id = url.scan(/vimeo\.com\/(\d+)\/?/).flatten
      return vimeo_thumb(vimeo_id.first) unless vimeo_id.empty?

      youtube_id = url.scan(/youtube\.com\/watch\?v=(.+)$/).flatten
      return youtube_thumb(youtube_id.first) unless youtube_id.empty?

      # ccc_id = url.scan(/https://api.media.ccc.de/v/camp2015-7041-refugees_emancipation/oembed$/).flatten
      ccc_id = ccc_get_event_id(url)
      return ccc_thumb(ccc_id) if ccc_id

      url
    end

    def ccc_get_event_id(url)
      ccc_id = url.scan(/media\.ccc\.de\/public\/events\/(\d+)$/).flatten
      ccc_id.first unless ccc_id.empty?
    end

    def youtube_thumb(id)
      "http://img.youtube.com/vi/#{id}/mqdefault.jpg"
    end

    def vimeo_thumb(id)
      JSON.parse(open("http://vimeo.com/api/v2/video/%s.json" % id).read).first['thumbnail_large']
    end

    def ccc_thumb(id)
      ccc_json(id)['poster_url']
    end

    def ccc_json(id)
      JSON.parse(open("https://media.ccc.de/public/events/%s" % id).read)
    end

    def prep_url(url)
      id = ccc_get_event_id(url)
      return ccc_json(id)['frontend_link'] if id
      # return "#{ccc_json(id)['frontend_link']}/oembed" if id
      # return "https://api.media.ccc.de/public/oembed?url=#{ccc_json(id)['frontend_link']}" if id

      url
    end
  end
end

Liquid::Template.register_filter(Jekyll::VideoThumbFilter)
