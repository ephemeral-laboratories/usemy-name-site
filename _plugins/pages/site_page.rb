
require 'jekyll'
require_relative '../drops/site_drop'

class SitePage < Jekyll::Page
    include Validation

    # Initialises the page.
    #
    # @param site [Jekyll::Site] the web site the page belongs to.
    # @param base [String] the path to the source.
    # @param drop [SiteDrop] the record associated with the page.
    def initialize(site, base, drop)
        super(site, base, 'sites', "#{drop.domain}.html")
        validate(drop, 'drop').required.must_be(SiteDrop)

        # TODO: Symbol keys not possible?
        @data = {
            'layout' => 'site',
            'title' => drop.name,
            'description' => "Summary of known name handling violations on #{drop.name}.",
            'drop' => drop,
        }
    end
end
