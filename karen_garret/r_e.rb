

def range(min,max)
    #base case
    
    return [] if max <= min
    # return [min,max - 1] if min == max - 2

    [min] + range(min+1,max)
    
    #
end

p range(1,5)

def exponent(b,n)
    return 1 if n == 0
    return 0 if b == 0

    b * exponent(b, n - 1)
end 

def bsearch(arr, target)
    
    i = arr.length/2
    temp = arr[i] 
    if target > temp
        sub = arr[i..-1]
        j = bsearch(sub, target)
        return i + j
    elsif target < temp
        sub = arr[0...i]
        return bsearch(sub, target)
    elsif target == arr[i]
        return i
    else 
        return nil
    end 
end 

def merge(left, right)
    merged = []
    until left.length == 0 || right.length == 0
        if left[0] <= right[0]
            merged << left.shift
        else 
            merged << right.shift 
        end 
    end
    merged + left + right 
end

def merge_sort(arr)
    return arr if arr.length <= 1

    i = arr.length/2
    left = arr[0...i]
    right = arr[i..-1]
    left_sorted = merge_sort(left)
    right_sorted = merge_sort(right)

    merge(left_sorted, right_sorted)
end

def factorial(num)
    return nil if num < 1
    return 1 if num == 1
  
    (num) * factorial(num - 1)
  end

  def it_fact(num)
    product = 1
    (1..num).each do |n|
        product *= n
    end
    product
  end
  
def permutations(arr)
    return [[]] if arr.empty?

    new_arr = []
    temp_sub = [[]]
    last = arr.pop
    prev_set = permutations(arr)
   
    prev_set.each.with_index do |sub_arr, i|
        sub_arr.each.with_index do |ele, j|
            temp_sub[i][j] << last << ele
        end
    end

    prev_set + temp_sub
 
end

def subsets(arr)
    return [[]] if arr.empty?

    new_arr = []
    last = arr.pop
    prev_set = subsets(arr)
   
    prev_set.each do |sub_arr|
        new_arr << sub_arr + [last]
    end

    prev_set + new_arr
 
        # new_arr << subsets(arr) + temp_arr

end



