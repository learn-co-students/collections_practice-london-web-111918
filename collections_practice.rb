require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse!
end

def sort_array_char_count(array)
  array = array.sort_by {|x| x.length}
  return array
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  return array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(old_array)
  new_array = []
  old_array.each do |string|
    string[2]= "$"
    new_array.push string
  end
  new_array
end

def find_a(array)
  new_array = []
  array.each do |elements|
    if elements.start_with?("a")
    new_array.push elements
    end
  end
  new_array
end

def sum_array(numbers)
  summation = numbers.inject do |sum , n|
    sum + n
  end
  summation
end

def add_s(array)
   array.collect.with_index do |element, index|
    if index == 1
      element
    else
      "#{element}s"
    end
  end
end
