# frozen_string_literal: true

require 'jekyll'
require_relative 'site_page'

class SiteGenerator < Jekyll::Generator
    include Validation

    safe true
    priority :normal

    def generate(site)
        DropStash.for(site).sites.each_with_index do |record, index|
            page = SitePage.new(site, site.source, record)
            site.pages << page
        end
    end
end
