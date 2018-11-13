def get_middle(s)
    if s.length%2==0
        puts s[(s.length/2)-1] + s[(s.length/2)]
    else
        puts s[(s.length/2)]  
    end
  end


  get_middle("test")
  get_middle("testing")