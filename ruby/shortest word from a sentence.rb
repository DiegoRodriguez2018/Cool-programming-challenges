def find_short(s)
    return (s.split(" ").sort_by(&:length))[0].length
end

