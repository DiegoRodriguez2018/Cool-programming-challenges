def longest_consec(strarr, k)
    s,temp = "" , ""
    if  k<=strarr.length && k>=0 
        times = strarr.length - k
        for i in 0..times do
           for j in 0..(k-1) do
            temp = temp + strarr[i+j]    
            end
           if s.length<temp.length 
                s = temp
            end
            temp = ""
        end
    end
    s
end