def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  result = []

  outer_count = 0

  while outer_count < src.length do
    inner_count = 0
    smallest = src[outer_count][0]

    while inner_count < src[outer_count].length do
      smallest = src[outer_count][inner_count] if src[outer_count][inner_count] < smallest
      inner_count += 1
    end

    result << smallest
    outer_count += 1
  end

  result
end
