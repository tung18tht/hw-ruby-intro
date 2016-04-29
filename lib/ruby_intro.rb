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
    # Test addition of all possible pair in array
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
    "Hello, " + name 
end

def starts_with_consonant? s
    s.match("^[B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]")    # Regex for first character is consonant
end

def binary_multiple_of_4? s
    if s.match("^(0|1)+")   # Check valid binary string
        return (s.to_i(2) % 4) == 0
    end
    false
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        # Exceptions...
        if isbn === ""
            raise ArgumentError, "ISBN number is empty"
        elsif price <= 0
            raise ArgumentError, "Invalid price"
        end

        @isbn = isbn
        @price = price
    end

    attr_reader :isbn, :price
    attr_writer :isbn, :price

    def price_as_string
        "$" + "%.2f" % @price
    end
end
