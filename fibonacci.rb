def fibs(number)
    fib = [1, 2]
    i = 2
    while i <= number
        fib << fib[i -1] + fib[i - 2]
        i += 1
    end
    p fib
end

def fibs_rec(number)
    number <= 1 ? number : fibs_rec(number - 1) + fibs_rec(number - 2)
end

puts fibs_rec(10)