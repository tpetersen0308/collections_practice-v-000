def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a,b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a,b| a.length <=> b.length }
end

def swap_elements(array)
  on_deck = array[1]
  array[1] = array[2]
  array[2] = on_deck
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  reversed_array = Array.new
  array.each { |element| reversed_array.unshift(element) }
  reversed_array
end

def kesha_maker(array)
  array.collect { |element| element[2] = "$" }
  array
end

def find_a(array)
  array.select { |element| element.start_with?("a") }
end

def sum_array(array)
  accumulator = 0
  array.each { |element| accumulator += element }
  accumulator
end

def add_s(array)
  array.map.with_index { |element, index| index == 1 ? element : element << "s" }
end
