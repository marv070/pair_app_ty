def pairing(name)
  pairs = name.shuffle.each_slice(2).to_a
    if name.length % 2 == 0
    else
      last_one = pairs.pop
      last_one = last_one[0]
      pairs[0] << last_one
    end
    pairs
    # teams = ""
    # pairs.each do |value|
    #   if value.include? (value[2])
    #     teams << value[0] + "," + value[1] + "," + value[2] + "<br>"
    #   else
    #     teams << value[0] + "," + value[1] + "<br>"
    #   end
    # end
    #   teams
end