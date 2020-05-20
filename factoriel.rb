number = ARGV[0].to_i

def factoriel(number)
    if number <= 1
    return (1)
else
    return number * factoriel(number -1)
    end
end

puts factoriel(number)
    