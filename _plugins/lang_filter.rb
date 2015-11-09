
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

    # filter navigation data (site.data.navigation) for pages in the current
    # language
    def i18n_nav(thing)
      pages = @context.registers[:site].pages_by_language
      lang = @context.registers[:page]['language']
      return thing if @context.registers[:page]['is_default_language']
      # puts "#{lang}: before '#{thing}'"
      filtered = thing.find_all do |t|
        t['url'] == '/' || # always pass through "Start"
          exists_in_language(t['url'], lang)
          #pages[lang][t['url']].name.end_with?("#{lang}.md")
      end
      # puts "#{lang}: after '#{filtered}'"
      filtered
    end

    # returns languages that a page exists in
    def other_languages_for_page(page)
      page_lang = @context.registers[:page]['language']
      langs = @context.registers[:site].config['languages'].reject {|l| l == page_lang }.find_all do |l|
        exists_in_language(page, l)
      end
      # puts "other_languages_for_page(#{page}) = #{langs}"
      langs
    end

    # returns true if there is a page in this language:
    # - always true for default language
    # - true for pageA and XX iff the source path of pageA ends with `XX.md`
    def exists_in_language(page, lang)
      pages = @context.registers[:site].pages_by_language
      bool = @context.registers[:site].config['language_default'] == lang || pages[lang][page].name.end_with?("#{lang}.md")
      # puts "exists_in_lang(#{page}, #{lang}) = #{bool}"
      bool
    end
  end
end

Liquid::Template.register_filter(Jekyll::LangFilter)
