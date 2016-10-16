def bubble_sort (numberArray)
	k = numberArray.size - 1
	while k > 0
		k.times do |index|
			if numberArray [index] > numberArray[index+1]
				numberArray[index], numberArray[index+1] = numberArray[index+1], numberArray[index]
			end
		end
	k -= 1
	end
	return numberArray
end

def bubble_sort_by (numberArray)
	k = numberArray.size - 1
	while k > 0
		k.times do |index|
			y = yield(numberArray[index], numberArray[index+1])
			if y == 1
				numberArray[index], numberArray[index+1] = numberArray[index+1], numberArray[index]
			end
		end
	k -= 1
	end
	return numberArray
end

print bubble_sort([4,3,78,2,0,2])
secondarray = bubble_sort_by([4,3,78,2,0,2]) do |left,right|
	left <=> right
end

print secondarray