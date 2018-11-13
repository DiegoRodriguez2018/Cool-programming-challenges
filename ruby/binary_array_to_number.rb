def binary_array_to_number(arr)
    previous=0
    result = 0

    arr.each do |n|
        result = previous*2 + n
        previous = result    
             
    end

    puts result
    result
end 



  binary_array_to_number([1,1,1,1])