# Part 1

def sum arr
    total = 0
    arr.each{ |number|
        total += number
    }
    total
end

def max_2_sum arr
    if arr.length == 0
        return 0
    elsif arr.length == 1
        return arr[0]
    end
        
    arr.sort! {|x,y| y <=> x}
    arr[0] + arr[1]
end

def sum_to_n? arr, n
    for i in 0...arr.length
        for j in i+1...arr.length
            if (arr[i] + arr[j]) == n
                return true
            end
        end
    end
    false
end

# Part 2

def hello(name)
end

def starts_with_consonant? s
end

def binary_multiple_of_4? s
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
