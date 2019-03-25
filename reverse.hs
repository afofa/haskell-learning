-- First implementation
rev1 [] = []
rev1 x = last x : rev1 (init x)

-- Second implementation
rev2 [] = []
rev2 x = rev2 (tail x) ++ [head x]

-- Third implementation
rev3 [] = []
rev3 (x:xs) = rev3 xs ++ [x]