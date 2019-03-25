zipTogether [] _ = []
zipTogether _ [] = []
zipTogether (a:as) (b:bs) = (a, b) : zipTogether as bs