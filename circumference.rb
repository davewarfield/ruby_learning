def circ(radius)
  if radius > 0
    2.0 * 3.14159265358979323846 * radius
  else
    0.0
  end
end

def test_circ(radius)
  puts "For a circle of radius of #{radius} the circumference is #{circ(radius)}"
end

test_circ(3)
test_circ(4.5)
test_circ(0)
test_circ(-1)

