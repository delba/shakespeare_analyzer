module ShakespeareAnalyzer
  class Scene
    def initialize(element)
      @element = element
    end

    def characters
      characters = speaker_elements.map(&:text).uniq
      characters.reject { |c| c == 'ALL' }
    end

  private

    def speaker_elements
      @element.get_elements('SPEECH/SPEAKER')
    end
  end
end
