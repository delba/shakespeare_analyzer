require 'net/http'
require 'rexml/document'

module ShakespeareAnalyzer
  class XMLDocument
    def initialize(url)
      @url = url
    end

    def play
      Play.new(play_element)
    end

  private

    def play_element
      document.root
    end

    def document
      REXML::Document.new(raw_xml)
    end

    def raw_xml
      Net::HTTP.get_response(uri).body
    end

    def uri
      URI.parse(@url)
    end
  end
end
