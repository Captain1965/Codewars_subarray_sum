#Задача подмассива с максимальной суммой состоит в 
#нахождении максимальной суммы непрерывной подпоследовательности 
#в массиве или списке целых чисел:
#encoding UTF-8
def max_Sequence(arr)
	index = arr.index(arr.max)
	arr_left = arr.slice(0,index+1)
	arr_right = arr.slice(index,arr.size-1)
	    if arr.delete_if {|item| item <=0}.size == 0
		return 0
	    end
	    print arr_left
	    puts
	    print arr_right
    #print arr_left = max_arr(arr_left.reverse).reverse 
    #puts
    #print arr_right = max_arr(arr_right)  
=begin
    if arr_left.sum >= arr_right.sum tnen
     return (arr_left , arr_left.sum)
    else return (arr_right , arr_right.sum)
    end
=end	
end
def max_arr(arr)
	arr_help = []
	l = arr.size-1
	i = 2
	arr_sum = arr[0]	
		l.times do
		    if arr_sum < arr.slice(0,i).sum then
		    	arr_sum = arr.slice(0,i).sum
		    	arr_help = arr.slice(0,i)
		   	end	
		 	i +=1 
		end
    arr_help
end


 max_Sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4 ])
