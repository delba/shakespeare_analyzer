require_relative 'shakespeare_analyzer/library'
require_relative 'shakespeare_analyzer/xml_document'

require_relative 'shakespeare_analyzer/play'
require_relative 'shakespeare_analyzer/scene'
require_relative 'shakespeare_analyzer/speech'

require_relative 'shakespeare_analyzer/line_counter'
require_relative 'shakespeare_analyzer/formatter'

module ShakespeareAnalyzer
  def self.line_counter(url)
    LineCounter.new(url).start
  end
end
