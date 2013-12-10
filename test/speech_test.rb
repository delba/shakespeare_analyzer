require_relative 'test_helper'

module ShakespeareAnalyzer
  class SpeechTest < Minitest::Test
    def setup
      @speech = Speech.new(xml(:speech))
    end

    def test_characters
      assert_equal ['First', 'Second'], @speech.characters
    end

    def test_lines_count
      assert_equal 2, @speech.lines_count
    end

  private

    def xml(name)
      REXML::Document.new(File.read("test/fixtures/#{name}.xml")).root
    end
  end
end
