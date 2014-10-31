def merge_sort(array)
  return array if array.size < 2

  a, b = divide(array)

  a = merge_sort(a) if a.size > 1
  b = merge_sort(b) if b.size > 1

  union(a, b)
end

def divide(array)
  size = array.size

  a = array[0..size/2-1]
  b = array[size/2..-1]

  [a, b]
end

def union(a, b)
  c = []

  while !a.empty? || !b.empty?
    if a.empty?
      c.push(b.shift)
    elsif b.empty?
      c.push(a.shift)
    elsif a.first < b.first
      c.push(a.shift)
    else
      c.push(b.shift)
    end
  end

  c
end


a = [*(1..100)].sample(10)

p a

b = merge_sort(a)

p merge_sort(a)
