# frozen_string_literal: true

def report(scores)
  green = amber = red = 0
  result = ''
  array_of_numbers = scores.split(',')
  array_of_numbers.each do |number|
    if number.to_i >= 75 then green += 1
    elsif number.to_i >= 50 then amber += 1
    else red += 1 end
  end
  result += "Green: #{green}" if green.positive?
  if amber.positive? then result += result.length.positive? ? "\nAmber: #{amber}" : "Amber: #{amber}" end
  if red.positive? then result += result.length.positive? ? "\nRed: #{red}" : "Red: #{red}" end
  result.length.positive? ? result : 'No results given'
end
