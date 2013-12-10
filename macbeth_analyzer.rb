require_relative 'lib/shakespeare_analyzer'

output = ShakespeareAnalyzer.line_counter ShakespeareAnalyzer::MACBETH

File.write 'output.txt', output

puts output
