require_relative 'test_helper'

module ShakespeareAnalyzer
  class PlayTest < Minitest::Test
    def setup
      doc = REXML::Document.new(File.read('test/fixtures/play.xml'))
      @play = Play.new(doc.root)
    end

    def test_speeches
      assert_equal 8, @play.speeches.size
      assert_equal 8, @play.speeches.grep(Speech).size
    end
  end
end
