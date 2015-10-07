
module Jekyll
  module LangFilter
    def i18n(thing)
      lang = @context.registers[:page]['language']
      thing[lang] || thing
    end
  end
end

Liquid::Template.register_filter(Jekyll::LangFilter)
