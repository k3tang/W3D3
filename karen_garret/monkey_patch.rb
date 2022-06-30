class Array

    def deep_dup(data = self)
        return data if !(data.is_a?(Array))

        new_arr = []
        data.each do |sub|
            new_arr << deep_dup(sub)
        end
        new_arr
    end

    

    def merge_sort(arr = self)
        return [] if self.length == 0
        return self[0] if self.length == 1

        i = arr.length/2
        sub1 = arr[0...i]
        sub2 = arr[i..-1]
        ms1 = merge_sort(sub1)
        ms2 merge_sort(sub2)

        if ms1 > ms2
            return self.concat(ms2, ms1)
            # return [ms2, ms1]
        else
            return self.concat(ms2, ms1)
        #    return [ms1,ms2]
        end
    end

end