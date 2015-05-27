#   Project Euler
#   Problem:    1
#   Author:     Ben Hobbs
#   Date:       26/5/2015
#   Desc:       Each new term in the Fibonacci sequence is generated by adding
#               the previous two terms. By starting with 1 and 2, the first 10
#               terms will be:
#
#               1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#               By considering the terms in the Fibonacci sequence whose values
#               do not exceed four million, find the sum of the even-valued terms.

upper = 4000000

fib_old, tmp = 1, 0
cumulative_sum = fib_new = 2

while fib_new + fib_old < upper
    tmp = fib_new
    fib_new += fib_old
    fib_old = tmp
    cumulative_sum += mod(fib_new,2) == 0 ? fib_new : 0
end

println("The cumulative sum is:\t$cumulative_sum")
