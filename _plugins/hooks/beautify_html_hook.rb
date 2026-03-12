
require 'jekyll'
require 'htmlbeautifier'

Jekyll::Hooks.register(:pages, :post_render) do |page|
    next unless page.output_ext == '.html'
    page.output = HtmlBeautifier.beautify(page.output)
end
