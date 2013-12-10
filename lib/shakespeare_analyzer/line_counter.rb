module ShakespeareAnalyzer
  class LineCounter
    def initialize(url)
      @play = XMLDocument.new(url).play
    end

    def start
      count_lines_per_character
      sort_result_by_lines_count_and_name
      format_output
    end

  private

    def count_lines_per_character
      @characters = @play.speeches.inject Hash.new(0) do |memo, speech|
        lines_count = speech.lines_count
        speech.characters.each do |character|
          memo[character] += lines_count
        end
        memo
      end
    end

    def sort_result_by_lines_count_and_name
      @characters = @characters.sort_by do |character, lines_count|
        [-lines_count, character]
      end
    end

    def format_output
      Formatter.new(@characters).output
    end
  end
end
