# Snail Sort
# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#          [4,5,6],
#          [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]
# For better understanding, please follow the numbers of the next array consecutively:

# array = [[1,2,3],
#          [8,9,4],
#          [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]

# NOTE: The idea is not sort the elements from the lowest value to the highest; the idea is to traverse the 2-d array in a clockwise snailshell pattern.

# NOTE 2: The 0x0 (empty matrix) is represented as [[]]


#    _____           _           _     _                 
#    / ____|         | |         | |   (_)                
#   | (___     ___   | |  _   _  | |_   _    ___    _ __  
#    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
#    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
#   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|

# Initially I though about writing a method to delete elements in the following secuence : top row, right column, bottom row, left column. Nevertheless, after thinking further the problem I realised another way to solve it will be to write a method that only deletes the top row and then "rotates" the remaining array anticlockwise. This will unravel the array the same way. 

def rotate_array arr
    result = [] 
    row = []
    
    (0..arr[0].size-1).each do |y|
        (0..arr.size-1).each do |x|
            row.push arr[x][y]
        end
        result.push row
        row = []
    end   
    result.reverse
end

# if arr = 
# [ [1, 2, 3]
#  [4, 5, 6]
#  [7, 8, 9] ]

# it will return 
# #[[3, 6, 9]
# # [2, 5, 8]
# # [1, 4, 7]]

# Just a method to visualize the array
def print_array arr
    arr.each do |row|
        p row
    end
    puts 
end 

# Snail method: delete top, rotate and repeat until all items are gone. 
def snail(arr)
    result = []
    while arr[0].nil? ==  false
        # delete top
        arr[0].each do |column|
            result.push column
        end 
        arr.delete_at(0)
        print_array arr
        if arr[0].nil? == false  
            arr = rotate_array arr
        end 
        print_array arr    
    end 
    result
end

arr = [[1,2,3],
         [4,5,6],
         [7,8,9]]

print_array arr

puts "Result: #{snail arr}" 

# The above code will return:

# [1, 2, 3]
# [4, 5, 6]
# [7, 8, 9]

# [4, 5, 6]
# [7, 8, 9]

# [6, 9]
# [5, 8]
# [4, 7]

# [5, 8]
# [4, 7]
# [8, 7]
# [5, 4]

# [5, 4]

# [4]
# [5]

# [5]

# [5]

# Result: [1, 2, 3, 6, 9, 8, 7, 4, 5]




#UPDATE: I realised that the rotate method can also be achieved by using the in-build transpose method and then reverse the array:

# def rotate_array arr
#     arr.transpose.reverse
# end