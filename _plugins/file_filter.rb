module Jekyll
  module FileFilter
    def git_changed(input)
      commit = `git rev-list --max-count 1 HEAD "#{input}"`.chomp
      `git show --format='%aD' #{commit}`.lines.first.chomp
    end

    def filesize(input)
      File.size(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::FileFilter)
