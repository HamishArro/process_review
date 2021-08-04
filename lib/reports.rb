def report(scores)
  green = amber = red = 0
  array_of_numbers = scores.split(',')
  array_of_numbers.each { |number|
    if number.to_i >= 75 then green += 1
    elsif number.to_i >= 50 then return "Amber: 1"
    else return "Red: 1" end
  }
  return "Green: #{green}"
end
