#Gap in Primes

def gap(g, m, n)
  a=[]
  for i in (m..n).reject{|x| x%2==0}.to_a 
    isprimo=true
    for j in 3..i-1
      if i%j==0
        isprimo =false
      end
    end
    isprimo ?  a.push(i) : nil 
  end

  a.each_with_index {|i, index| 
    if ((a[index+1] - i == g) unless a[index+1].nil?)
      return [i, a[index+1]]
    end
  }

nil

end


puts gap(2,100,110) 
