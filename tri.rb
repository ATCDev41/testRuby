i = 0
while (i < ARGV.length - 1)

    if (ARGV[i]< ARGV[i + 1])
        switch = ARGV[i]
        ARGV[i] = ARGV[i + 1] 
        ARGV[i + 1] = switch 
    end
i+=1
end

puts ARGV.join('')