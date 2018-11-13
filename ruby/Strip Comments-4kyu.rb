# Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

# Example:

# Given an input string of:

# apples, pears # and bananas
# grapes
# bananas !apples
# The output expected would be:

# apples, pears
# grapes
# bananas
# The code would be called like so:

# result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# # result should == "apples, pears\ngrapes\nbananas"

#    _____           _           _     _                 
#    / ____|         | |         | |   (_)                
#   | (___     ___   | |  _   _  | |_   _    ___    _ __  
#    \___ \   / _ \  | | | | | | | __| | |  / _ \  | '_ \ 
#    ____) | | (_) | | | | |_| | | |_  | | | (_) | | | | |
#   |_____/   \___/  |_|  \__,_|  \__| |_|  \___/  |_| |_|


def solution(input, markers)
    input = input.split("\n")
    markers.each {|marker|
        input.map! {|str|
            str =  str.split(marker)[0].strip
        }
    }
    input.join("\n")
end

str = "apples, pears # and bananas\ngrapes\nbananas !apples"
markers = ["#", "!"]

result = solution(str, markers)
puts result


# # result should be => "apples, pears\ngrapes\nbananas"