module ShakespeareAnalyzer
  class Play
    def initialize(element)
      @element = element
    end

    def speeches
      speech_elements.map do |element|
        Speech.new(element)
      end
    end

  private

    def speech_elements
      @element.get_elements('ACT/SCENE/SPEECH')
    end
  end
end
