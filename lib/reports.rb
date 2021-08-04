def report(scores)
  green = amber = red = 0
  result = ""
  array_of_numbers = scores.split(',')
  array_of_numbers.each { |number|
    if number.to_i >= 75 then green += 1
    elsif number.to_i >= 50 then amber += 1
    else return "Red: 1" end
  }
  if green > 0 then result += "Green: #{green}"
  elsif amber > 0 then result += "Amber: #{amber}" end
end
