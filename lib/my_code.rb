def map(array)
  new = []
  i = 0
  while i <array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(starting_array, starting_point=nil)
  if starting_point
    i = 0
    answer = starting_point
  else
    i=1
    answer = starting_point[0]
  end

    while i < starting_array.length do	 
    answer = yield(answer, starting_array[i])

      i += 1
 end

    return answer
end

  