                                                                      #example input = 2017

# Create a method that takes a positive integer number,and returns the next
# bigger number formed by the same digits.

def next_bigger(input) 
	return -1 if  input <= 10
	reversed_input = input.to_s.split("").reverse.map { |m| m.to_i  }   # = [7,1,0,2]
	reversed_input.each_with_index do |m,i|
    if m > reversed_input[i+1]                                        # 7 > 1 then switch and break
    	switch = reversed_input[i+1]
    	reversed_input[i+1] = m
    	reversed_input[i] = switch
    	break
    end    
	end                                                                # reversed_input = [1,7,0,2]    
  reversed_input.reverse.join("").to_i                               # returns 2071
end