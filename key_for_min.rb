require 'pry'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

name_hash = {:blake => 500, :ashley => 2, :adam => 1}

def key_for_min_value(name_hash)
    
    smallest_value = []  #array to hold values 
    
    name_hash.map do |k,v|  #iterate over key, value pairs and assign to array
        smallest_value << v
    end

    i = 1  
    min = smallest_value[0] #assign the first array entry as the min 

    while i < smallest_value.length  #increment from 1 to end of array -> 1 < 3 
        if smallest_value[i] < min    #if current is less than min assign min as current 
            min = smallest_value[i]
        end
        i += 1
    end

    name_hash.index(min)
end



