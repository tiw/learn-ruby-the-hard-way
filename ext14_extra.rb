def middle (left, right)
    (left + right) / 2
end

def guess (left, right)
    middle = middle(left, right)
    puts "is you number bigger than %d(y/n)?" % middle

    answer = gets.chomp()
    if answer == 'y'
        return [middle, right]
    else
        return [left, middle]
    end
end

puts "Welcome to guess the number"
puts "think a number smaller than 100 and greater than 0"
left = 0
right = 100

answer = 'n'
count = 0
while answer == 'n'
    count = count + 1
    right_number = middle(left, right)
    puts "is you number %d? (y or n)" % right_number
    answer = gets.chomp()
    if answer == 'n'
        newrange = guess(left, right)
        left = newrange[0]
        right = newrange[1]
    end
end
puts "aha, you number is %d" % right_number
puts "You got me, I have guessed %d times" % count

