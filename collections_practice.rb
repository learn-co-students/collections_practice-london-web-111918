require 'pry'

def sort_array_asc(array)
  ascending = array.sort do |a, b|
    a <=> b
  end
  ascending
end

def sort_array_desc(array)
  descending = array.sort do |a, b|
    b <=> a
  end
  descending
end

def sort_array_char_count(array)
  characters = array.sort do |a, b|
    a.size <=> b.size
  end
  characters
end

def swap_elements(array)
    element = array.slice!(1)
    return array.insert(2, element)
end

def swap_elements_from_to(array, index, destination_index)
    element = array.slice!(index)
    return array.insert(destination_index, element)
end

def reverse_array(array)
    array.reverse!
end

def kesha_maker(array)
    array.map do |word|
    letters = word.split("")
    letters.delete_at(2)
    letters.insert(2, "$").join
    end
end

def find_a(array)
    array.find_all do |string|
      if string.start_with?("a")
        string
      end
    end
end

def sum_array(array)
    array.inject do |total, number|
      total += number
    end
end

def add_s(array)
    array.each_with_index.collect do |element, index|
      if element == "feet" || index == 1
        element
      else
        element.concat("s")
      end
    end
end
