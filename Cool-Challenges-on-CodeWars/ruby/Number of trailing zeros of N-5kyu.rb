# Number of trailing zeros of N!

# Write a program that will calculate the number of trailing zeros in a factorial of a given number.

# N! = 1 * 2 * 3 * ... * N

# Be careful 1000! has 2568 digits...

# For more info, see: http://mathworld.wolfram.com/Factorial.html

# Examples
# zeros(6) = 1
# # 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

# zeros(12) = 2
# # 12! = 479001600 --> 2 trailing zeros
# Hint: You're not meant to calculate the factorial. Find another way to find the number of zeros.


# *****SOLUTION*****

# By running the following code we can visualize the data of the first 25 numbers as shown below.

# def factorial n 
#     result= 1
#     (1..n).each do |i|
#         result *= i
#     end
#     return result
# end


# (1..25).each do |i|
#     puts "#{i} > #{factorial (i)}"
# end

# 1 >> 1
# 2 >> 2
# 3 >> 6
# 4 >> 24
# 5 >> 120
# 6 >> 720
# 7 >> 5040
# 8 >> 40320
# 9 >> 362880

# 10 >> 3628800
# 11 >> 39916800
# 12 >> 479001600
# 13 >> 6227020800
# 14 >> 87178291200

# 15 >> 1307674368000
# 16 >> 20922789888000
# 17 >> 355687428096000
# 18 >> 6402373705728000
# 19 >> 121645100408832000

# 20 >> 2432902008176640000
# 21 >> 51090942171709440000
# 22 >> 1124000727777607680000
# 23 >> 25852016738884976640000
# 24 >> 620448401733239439360000

# 25 >> 15511210043330985984000000

# Its interesting to notice that the number of trailing zeros is proportional to the number of numbers multiples of 5 that are presenent in the factorial calculation. 

# #eg 1*2*3*4*5*6*7*8*9*10*11*12*13*14*15 = 1307674368000 
# which has 3 trailing zeros, one per each multiple of 5 (5,10,15)

# But also interesting to note that 25 has 5 multiples of 5 but 6 trailing zeros, which suggest everytime a number is multiple of 25 it adds an extra trailing zero. 

# To explore this we can run the following code, which will return trailing zeros as a function of N. We are also going to limit our query to N multiples of 5 and expand our range from 5 to 200. 

# def number_of_trailing_zeros n
#     result = 0
#     bool = true
#     while bool
#         if (n%10==0)
#             n= n/10
#             result +=1
#         else
#             bool = false
#         end
#     end
#     return result
# end

# def factorial n 
#     result= 1
#     (1..n).each do |i|
#         result *= i
#     end
#     return result
# end

# (5..200).step(5).each do |i|
#     puts "#{i}! > # of trailing zeros: #{number_of_trailing_zeros(factorial (i))} "
# end

# Result:

# 5! > # of trailing zeros: 1
# 10! > # of trailing zeros: 2
# 15! > # of trailing zeros: 3
# 20! > # of trailing zeros: 4

# 25! > # of trailing zeros: 6
# 30! > # of trailing zeros: 7
# 35! > # of trailing zeros: 8
# 40! > # of trailing zeros: 9
# 45! > # of trailing zeros: 10

# 50! > # of trailing zeros: 12
# 55! > # of trailing zeros: 13
# 60! > # of trailing zeros: 14
# 65! > # of trailing zeros: 15
# 70! > # of trailing zeros: 16

# 75! > # of trailing zeros: 18
# 80! > # of trailing zeros: 19
# 85! > # of trailing zeros: 20
# 90! > # of trailing zeros: 21
# 95! > # of trailing zeros: 22

# 100! > # of trailing zeros: 24
# 105! > # of trailing zeros: 25
# 110! > # of trailing zeros: 26
# 115! > # of trailing zeros: 27
# 120! > # of trailing zeros: 28

# 125! > # of trailing zeros: 31
# 130! > # of trailing zeros: 32
# 135! > # of trailing zeros: 33
# 140! > # of trailing zeros: 34
# 145! > # of trailing zeros: 35

# 150! > # of trailing zeros: 37
# 155! > # of trailing zeros: 38
# 160! > # of trailing zeros: 39
# 165! > # of trailing zeros: 40
# 170! > # of trailing zeros: 41

# 175! > # of trailing zeros: 43
# 180! > # of trailing zeros: 44
# 185! > # of trailing zeros: 45
# 190! > # of trailing zeros: 46
# 195! > # of trailing zeros: 47
# 200! > # of trailing zeros: 49

# After analysing the data we can find a pattern: the number of trailing zeros can be calculated by calculating the number of times you can divide the numbers of the series by 5 and have modulo 0. For example:

# for 25 : 
#     [5, 10, 15, 20, 25]
#     [5]
#     Which are 6 times, just as above. 


# for 125:
#     [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120, 125]
#     [5, 10, 15, 20, 25]
#     [5]
#     Which are 31 times just as above. 


# So a method to solve this problem will be:


def number_trailing_zeros n
    arr= (5..n).step(5).to_a
    p arr
    counter = 0
    temp = []

    while arr.length!=0    
        temp = []
        p arr
        arr.each do |value|
            if value%5==0
                counter +=1
                if (value/5)%5 == 0
                    temp.push(value/5)
                end
            end
        end
        arr = temp
    end

    return counter
end


# UPDATE: Analizing further the data we can observe we can also get the same result by counting the number of items in the array as it get reduced, which makes the method a lot more efficient. 


def number_trailing_zeros n
    arr= (5..n).step(5)
    number_of_elements = arr.size
    counter = number_of_elements
    while number_of_elements/5>=1
        number_of_elements = number_of_elements / 5 
        counter += number_of_elements
    end
    return counter
end

