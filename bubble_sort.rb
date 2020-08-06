# Compares two numbers in an array and sorts them smallest to largest

def bubble_sort(array)

    array.each { |num1| array_sort(num1, array)} # Does it again and again and again until nil
  
    p array
  
  end
  
  
  def array_sort(num1, array) # Bubble Sorts the first iteration
  
    array.each do |num1|
  
    current_index = array.find_index(num1)
    num2_index = array.find_index(num1) + 1
    num2 = array[num2_index]
  
    if num2 != nil && num1 > num2 
      if num1 > num2 
        array.insert(num2_index, array.delete_at(current_index)) 
      end
    end
  
    end
  
  end
  
  bubble_sort([4,3,78,2,0,2])
  
  # array.insert(2, array.delete_at(7))