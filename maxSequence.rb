#Задача подмассива с максимальной суммой состоит в 
#нахождении максимальной суммы непрерывной подпоследовательности 
#в массиве или списке целых чисел:
#encoding UTF-8

def max_sequence(arr)
	    if arr.all?{ |elem| elem <= 0 } 
		return 0
	    end 
	   l = arr.size
	max_arr_1 = 0
	l.times do
		if max_arr_1 < max_arr(arr) then
			max_arr_1 = max_arr(arr)
			arr.shift
		else
			arr.shift
		end	
	end
	max_arr_1
end
def max_arr(arr)
	l = arr.size
	i = 1
	arr_sum = 0
		l.times do
		    if arr_sum < arr.slice(0,i).sum then
		    	arr_sum = arr.slice(0,i).sum
		    	i +=1
		    else 
		    	i +=1 
		   	end
		end
	arr_sum
end
#print max_Sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])

