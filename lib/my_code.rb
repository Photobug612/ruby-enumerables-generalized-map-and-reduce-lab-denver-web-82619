def map(array)
  new = []
  i = 0
  while i <array.length do
    new.push(yield(array[i]))
    i += 1
  end
  return new
end

def reduce(array, starting_point=nil)
  if starting_point
    a = 0
    result = starting_point
  else
    a=1
    result = array[0]
  end

    while a < array.length do	 
    result = yield(result, array[a])

      a += 1
 end

    return result
end

  