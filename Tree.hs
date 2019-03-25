data Tree a = NullNode | Node {value :: a, left :: Tree a, right :: Tree a}

sum_tree :: (Num a) => Tree a -> a
sum_tree NullNode = 0
sum_tree t = value t + sum_tree (left t) + sum_tree (right t)