def report(scores)
  number = scores.to_i
  if number >= 75 then return "Green: 1"
  elsif number >= 50 then return "Amber: 1"
  else return "Red: 1" end
end
