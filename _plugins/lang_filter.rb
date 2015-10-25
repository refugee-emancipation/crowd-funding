
module Jekyll
  module LangFilter
    def i18n(thing)
      lang = @context.registers[:page]['language']
      default_lang = @context.registers[:site].config['language_default']
      if thing.is_a?(Hash) && thing.has_key?(lang)
        thing[lang]
      elsif thing.is_a?(Hash)
	puts "WARN: using default language (#{default_lang}) '#{thing[default_lang]}' instead of page language (#{lang}) in page '#{@context.registers[:page]['name']}'"
        thing[default_lang]
      else
        thing
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::LangFilter)
