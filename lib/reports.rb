def report(scores)
  numbers = scores.to_i
  if numbers >= 75 then return "Green: 1"
  elsif numbers >= 50 then return "Amber: 1"
  else return "Red: 1" end
end
