## returns true if every element in array begins with "r". False otherwise
## .start_with? method
require 'pry'

def begins_with_r(array)
  array2 = []
  array.each do |element|
    if element.start_with?("r")
      array2 << element
    end
  end

  if array2.length == array.length
    true
  else
    false
  end

end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    if element.class != String
      elem_to_str = element.to_s
      elem_to_str.start_with?("wa")
    else
      element.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  initial_array = []
  array.each do |hash|
    hash_value = hash.values
    initial_array << hash.values
    initial_array.flatten
  end

  return_array = []
  initial_array.each do |name|
    return_array << { name: name[0], count: initial_array.count(name)}
  end

  return_array.uniq

end

# keys = [{:first_name => "blake"}, {:first_name => "ashley"}]
# data = [{"blake"=>{key-value pairs}, "ashley"=>{key-value pairs}]
# desired output =
def merge_data(keys,data)
  keys.each do |name|
    name_from_key = name[:first_name]
    corr_data = data[0][name_from_key]

    corr_data.each do |attribute,value|
      name[attribute] = value
    end
  end

end

def find_cool(array)
  return_array = []
  array.each do |hash|
    hash.each do |key,value|
      if value == "cool"
        return_array << hash
      end
    end
  end
  return_array
end



def organize_schools(schools)
  return_hash = Hash.new
  schools.each do |school,location_hash|
    if return_hash[location_hash.values[0]] == nil
      return_hash[location_hash.values[0]] = []
      return_hash[location_hash.values[0]] << school
    else
      return_hash[location_hash.values[0]] = return_hash[location_hash.values[0]] << school
    end
  end
  return_hash
end
