cipher [] _ = []
cipher (x:xs) n = (rotate x n) : (cipher xs n)

rotate c 0 = c
rotate c n = rotate (next c) (n-1)

next c = if c == 'z' then 'a' else succ c