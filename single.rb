a =13
b = 19

(1..300).each do
  if a == b
    p "got it"
    break
  end
  if a < b
    b = b - a
    a = a + a
  else
    a = a - b
    b = b + b
  end
end
