# Definition
# Balanced number is the number that The sum of all digits to the left of the middle digit(s) and the sum of all digits to the right of the middle digit(s) are equal.

# Given a number, Find if it is Balanced or not .

# Notes
# If the number has an odd number of digits then there is only one middle digit, e.g. 92645 has middle digit 6; otherwise, there are two middle digits , e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g 413023 is a balanced number because the left sum and right sum are both 5.

# Number passed is always Positive .

# Return the result as String

# Input >> Output Examples
# 1- balancedNum (7) ==> return "Balanced"   

#    _____           _           _     _                 
#    / ____|         | |         | |   (_)                
#   | (___     ___   | |  _   _  | |_   _    ___    _ __  
#    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
#    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
#   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|


def balanced_num(number)
    arr =  number.to_s.split("")
    p arr
    
    left =0
    right = 0
    # If is single or double digit the array will be balanced. 
    if (1..2).include? arr.size
        return "balanced"
    end
    
    # Calculating the number of elements "n" on the right and left
    if arr.size%2 == 0
        # If the number of elements in arr is even n will be
        n = (arr.size-2)/2
    else
        # And if is odd:
        n = (arr.size-1)/2
    end

    # Now we can use n to sum values on the left and right of array. 
    (0..n-1).each {|index|
        left += arr[index].to_i
        # Negative index to check values at the end of the array
        right += arr[-index-1].to_i 
    }

    if left==right
        return "balanced"
    else
        return "not balanced"
    end
end
