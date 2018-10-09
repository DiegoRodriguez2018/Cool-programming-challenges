
# *Ruby Conversions:*
# 1. Make a ruby method that takes a number in base 2 (binary, as a string) and converts it to a decimal (not using the inbuilt ruby methods).
# 2. Make a ruby method that takes a number in decimal (base 10, as an integer), and converts it to base 2 (binary - which will have to be a string).



def binary_to_decimal bn
    result = 0
    bn =  bn.to_i.digits
    bn.each_with_index { |value,index|
        result += value*(2**index)
    }
    result
end

bn = "110001101011110"

puts "Binary: #{bn} > Decimal: #{binary_to_decimal bn}"
# should be =>25438



def decimal_to_binary dn
    result = ""
    while dn>=1
        result += (dn%2).to_s
        dn = dn /2
    end
    result.reverse
end

dn = 25438
puts "Decimal: #{dn} > Binary: #{decimal_to_binary dn}"
# should be => 110001101011110


# *BEAST MODE:*
# 1. Extend the first of the previous methods so that it can take a string and a number representing the bases that the string is written in (two arguments), and converts it to base 10.
# 2. Extend the second of those previous methods so that it can take any integer and a number representing the bases to convert to (two arguments), and converts it to a string which contains the number in the specified base.

puts

def nbase_to_decimal number, base
    result = 0
    number =  number.to_i.digits
    number.each_with_index { |value,index|
        result += value*(base**index)
    }
    result
end

number = "103245"
base = 6

puts "Base #{base}: #{number} > Decimal: #{nbase_to_decimal number,base}"
# should be => 8525



def decimal_to_nbase number, base
    result = ""
    while number>=1
        result += (number%base).to_s
        number = number /base
    end
    result.reverse
end

number = 8525
base = 6

puts "Decimal: #{number} > Binary: #{decimal_to_nbase number,base}"
# should be => 103245
