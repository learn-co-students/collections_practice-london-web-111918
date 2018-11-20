require 'pry'

def sort_array_asc(int_array)
  int_array.sort {|a, b| a <=> b}
end

def sort_array_desc(int_array)
  int_array.sort {|a, b| b <=> a}
end

def sort_array_char_count(str_array)
  str_array.sort_by {|word| word.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index, d_index)
  array[index], array[d_index] = array[d_index], array[index]
  array
end

def reverse_array(int_array)
  int_array.reverse
end

def kesha_maker(str_array)
  kesha_array = []
  str_array.each do |word|
    word[2] = '$'
    kesha_array << word
  end
  kesha_array
end

def find_a(str_array)
  str_array.select {|word| word[0] == 'a'} # word.start_with?('a')
end

def sum_array(int_array)
  int_array.inject {|sum, num| sum + num} # int_array.reduce(:+)
end

def add_s(str_array)
  str_array.map {|word| word == str_array[1] ? word : "#{word}s"}
end
