module Jekyll
  class AV < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @src = site.baseurl + "/assets/" + text.strip
      _check_file_exists("assets/" + text.strip)
    end

    def _check_file_exists(file_path)
      full_path = File.join(Dir.pwd, file_path)
      puts full_path
      unless File.exist?(full_path)
        raise "File not found: #{full_path}"
      end
    end

    def render(context)
        <<~HTML
        <img src="{@src}" alt="Audio Visualizer" />
        HTML
    end
  end
end

Liquid::Template.register_tag('av', Jekyll::AV)
