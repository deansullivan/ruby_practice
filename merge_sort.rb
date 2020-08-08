def merge_sort(array)
    return array if array.length <= 1

    left_side_sort = merge_sort(array[0..(array.length - 1)/2]) # Sort the left side of the array
    right_side_sort = merge_sort(array[(array.length - 1)/2 + 1..array.length - 1]) # Sort the right side of the array

    if left_side_sort.first < right_side_sort.first
        return [left_side_sort.shift] + merge_sort(left_side_sort + right_side_sort)
    else
        return [right_side_sort.shift] + merge_sort(right_side_sort + left_side_sort)
    end
end

test_array = [5, 4, 12, 89, 19, 2, 79, 6]
print_test =  merge_sort(test_array)
p print_test