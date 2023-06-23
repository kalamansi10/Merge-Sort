def mergsort(arr)
    return arr if arr.length == 1
    half = (arr.length / 2)
    l_arr = mergsort(arr[0..half - 1])
    r_arr = mergsort(arr[half..-1])
    result = []
    until l_arr == [] ||  r_arr == []
      if l_arr[0] < r_arr[0]
        result << l_arr[0]
        l_arr.delete_at(0)
      else
        result << r_arr[0]
        r_arr.delete_at(0)
      end
    end
    result + l_arr + r_arr
  end
  
  arr = [6,5,4,3,2,1]
  p mergsort(arr)