-- First implementation
fac1 n = product [1..n]

-- Second implementation
fac2 n = if n == 1 then 1 else n * fac2 (n-1)