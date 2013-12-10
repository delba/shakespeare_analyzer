require_relative 'test_helper'

module ShakespeareAnalyzer
  class FormatterTest < Minitest::Test
    def test_with_only_one_result
      result = [['MACBETH', 42]]
      expected_output = "   42 Macbeth"
      assert_equal expected_output, Formatter.new(result).output
    end

    def test_with_multiple_results
      result = [['MACBETH', 42], ['LADY MACBETH', 21]]
      expected_output = "   42 Macbeth\n   21 Lady Macbeth"
      assert_equal expected_output, Formatter.new(result).output
    end

    def test_rjust_is_5
      result = [['MACBETH', 99999], ['THIRD APPARITION', 1]]
      expected_output = "99999 Macbeth\n    1 Third Apparition"
      assert_equal expected_output, Formatter.new(result).output
    end

    def test_each_part_of_the_name_is_capitalized
      result = [['OlD mAn', 1]]
      expected_output = "    1 Old Man"
      assert_equal expected_output, Formatter.new(result).output
    end
  end
end
