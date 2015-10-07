
module Jekyll
  module LangFilter
    def i18n(thing)
      lang = @context.registers[:page]['language']
      if thing.is_a?(Hash) && thing.has_key?(lang)
        thing[lang]
      else
        thing
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::LangFilter)
