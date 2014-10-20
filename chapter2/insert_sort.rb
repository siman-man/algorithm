def insert_sort(array)
  for j in 1..array.length-1
    key = array[j]
    i = j - 1

    while i >= 0 && array[i] > key
      array[i+1] = array[i]
      i -= 1
    end

    array[i+1] = key
  end
end

array = [30, 10, 5, 23, 100, 55, 4]

insert_sort(array)

p array
