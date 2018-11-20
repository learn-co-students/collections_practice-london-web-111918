require 'pry'

nums = [25, 7, 14]

def sort_array_asc(nums)
nums.sort
#binding.pry
end


def sort_array_desc(nums)
  nums.sort.reverse
end

animals = ["dogs", "cat", "Horses"]
def sort_array_char_count(animals)
  #should return an array in ascending order sorted by the number of characters in the string
  animals.sort_by {|x| x.length}
  #arr = arr.sort_by(&:length)
  #it's calling the method length on every item yielded by sort_by - exactly like the first line.
  #The prefix & operator converts an object (specifically a Proc object or any object that has a to_proc method, which symbol objects do) to a block.
  #In case of symbols that will be a block that calls the method with the given name on its argument (as that's how Symbol#to_proc is defined)
end


names = ["blake", "ashley", "scott"]
def swap_elements(names)
#swap the second and third elements of an array'
names[1], names[2] = names[2], names[1]
names
end

nums = [25, 7, 14]
def reverse_array(nums)
  nums.reverse
end


names = ["blake", "ashley", "scott"]
def kesha_maker(names)
#taking an array as an input, change the 3rd character of each element to a dollar sign.'
  names.each { |x| x[2] = "$"}
end


words = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
def find_a(words)
  #'find all words that begin with "a" in the following array'
  words.select { |word| word.start_with?('a') }
end


to_sum = [11,4,7,8,9,100,134]
def sum_array(to_sum)
  #sum all the numbers in the following array
  to_sum.inject(0){|sum,x| sum + x }
  #note: the 0 base case is needed so that 0 will be returned on an empty array instead of nil)
end

items = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
def add_s(items)
  items.map do |x|
    x == items[1] ? x : "#{x}s"
  end
end
