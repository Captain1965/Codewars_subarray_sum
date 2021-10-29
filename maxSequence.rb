#Задача подмассива с максимальной суммой состоит в 
#нахождении максимальной суммы непрерывной подпоследовательности 
#в массиве или списке целых чисел:
#encoding UTF-8
def max_Sequence(arr)
	index = arr.index(arr.max)
	arr_left = arr.slice(0,index+1)
	arr_right = arr.slice(index,arr.size-1)
	    if arr.delete_if {|item| item <=0}.size == 0
		return '([],0)'
	    end
    if arr_left.sum >= arr_right.sum 
     return (arr_left) , arr_left.sum
    else return (arr_right) #arr_right.sum)
    end	
end
def max_arr(arr)
	arr_help =[]
	l = arr.size-1
	i = 2
	arr_sum = arr[0]
		l.times do
		    if arr_sum < arr.slice(0,i).sum then
		    	arr_sum = arr.slice(0,i).sum
		    	arr_help = arr.slice(0,i)
		    	i +=1
		   	end
		   	i +=1 
		end
	arr_help.sum
end



#print max_Sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]
print max_arr([ -2, -1, 5, 4])
