a = -> n { 8 * n * n }
b = -> n { 64 * n * Math.log2(n) }

x = 2

loop do
  break if a.call(x) > b.call(x)
  x += 1
end

puts x
puts a.call(x)
puts b.call(x)
