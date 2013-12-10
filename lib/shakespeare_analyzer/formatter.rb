module ShakespeareAnalyzer
  class Formatter
    def initialize(result)
      @result = result
    end

    def output
      @result.map do |result|
        format_result(*result)
      end.join("\n")
    end

  private

    def format_result(character, lines_count)
      format_lines_count(lines_count) +
      ' ' +
      format_character(character)
    end

    def format_lines_count(lines_count)
      lines_count.to_s.rjust(5)
    end

    def format_character(character)
      character.split.map(&:capitalize).join(' ')
    end
  end
end
