# ### Challenge 

# Assuming the following method:
# def print_list(array)
#     counter = "a"
#     array.each do |item|
#       puts "#{counter}. #{item}"
#       counter = counter.next
#     end
# end


# Create the following list formatting using `yield`.

# ```ruby 
# (a) Ruby
# (b) Python
# (c) Java
# ```

# ```ruby 
# <10> Ruby
# <11> Python
# <12> Java
# ```


# ### Beast mode 

# Create the following list formatting using `yield`.

# ```ruby 
# (i) Ruby
# (ii) Python
# (iii) Java
# ```

# ```ruby 
# [500]: alpha
# [600]: beta
# [700]: gamma
# [800]: delta
# ```


def print_list(array)
    counter = yield
    array.each do |item|
      puts "#{counter}. #{item}"
      counter = counter.next
    end
end

arr = ["Ruby","Python","Java"]

print_list (arr) {
    "(a)"
}

print_list (arr) {
    "<#{10}>"
}
