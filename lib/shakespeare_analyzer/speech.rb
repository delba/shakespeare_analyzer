module ShakespeareAnalyzer
  class Speech
    def initialize(element)
      @element = element
    end

    def characters
      characters = speaker_elements.map(&:text)
      if characters == ['ALL']
        characters = scene.characters
      end
      characters
    end

    def lines_count
      @lines_count ||= line_elements.size
    end

  private

    def speaker_elements
      speaker_and_line_elements[0]
    end

    def line_elements
      speaker_and_line_elements[1]
    end

    def speaker_and_line_elements
      @speaker_and_line_elements ||= @element.elements.partition do |e|
        e.name == 'SPEAKER'
      end
    end

    def scene
      Scene.new(@element.parent)
    end
  end
end
