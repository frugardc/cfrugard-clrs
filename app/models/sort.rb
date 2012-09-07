class Sort

	def self.insertion(arr)
		arr.each_with_index do |key,index|
			i = index - 1
			puts "Before WHILE for #{key} - " + arr.join(",")
			while i > -1 and arr[i] > key
				puts "Since the key (#{key}) is less than the element to it's left (#{arr[i]})"
				arr[i + 1] = arr[i]
				puts "replace the key to the right with the key to the left"
				i = i - 1
				puts arr.join(",")
			end
			arr[i + 1] = key
			puts arr.join(",")
			puts "----"
		end
		return arr
	end

	def self.linear_search(array,value)
		index = 0
		while index < array.size
			if array[index] == value
				return index
			end
			index += 1
		end
		return nil 
	end

end