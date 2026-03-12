
require 'jekyll'

# Alternative to the stock `markdownify` filter which produces less redundant markup when inside lists.
module InlineMarkdownFilter
    OPEN_P = "<p>"
    OPEN_P_LEN = OPEN_P.length
    CLOSE_P = "</p>"
    CLOSE_P_LEN = CLOSE_P.length

    def inline_markdownify(input)
#         rendered = markdownify(input)
        rendered = @context.registers[:site].find_converter_instance(Jekyll::Converters::Markdown).convert(input.to_s).strip

        # If the result is a single paragraph, unwrap it
        if rendered.start_with?(OPEN_P) && rendered.end_with?(CLOSE_P)
            candidate = rendered[OPEN_P_LEN..(-1-CLOSE_P_LEN)]
            if !candidate.include?(OPEN_P)
                rendered = candidate
            end
        end

        rendered
    end
end

Liquid::Template.register_filter(InlineMarkdownFilter)
