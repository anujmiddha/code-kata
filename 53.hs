choose n 0 = 1
choose 0 k = 0
choose n k = choose (n-1) (k-1) * n `div` k

validCase x y = (choose x y) > 1000000

validCases x = length (filter (validCase x) [1..x])

count = sum (map validCases [23..100])
