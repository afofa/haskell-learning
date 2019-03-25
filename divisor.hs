divisors num = [x | x <- [1..num], num `mod` x  == 0]

is_perfect num = if num == sum (init (divisors num)) then True else False

perfect_nums max_val = [x | x <- [1..max_val], is_perfect x]