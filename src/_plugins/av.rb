module Jekyll
  class AV < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @file = text.strip.delete_prefix('"').delete_suffix('"')
    end

    def render(context)
      site = context.registers[:site]

      # Public URL (what the browser sees)
      src = File.join(site.baseurl.to_s, "assets", @file)

      # Optional: check destination instead of source
      output_path = File.join(site.dest, "assets", @file)

      unless File.exist?(output_path)
        Jekyll.logger.warn "AV tag:", "file not found in output: #{output_path}"
      end

      <<~HTML
        <img src="#{src}" alt="Audio Visualizer" />
      HTML
    end
  end
end

Liquid::Template.register_tag("av", Jekyll::AV)
