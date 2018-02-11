module PostUtils
  class Markdown2Html < Redcarpet::Render::HTML
    include Redcarpet::Render::SmartyPants
  end

  def self.render_markdown(markdown)
    output = Markdown2Html.new(with_toc_data: true)
    options = { autolink: true, tables: true, fenced_code_blocks: true }

    renderer = Redcarpet::Markdown.new(output, options)
    renderer.render(markdown)
  end
end
