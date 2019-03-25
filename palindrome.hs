is_palindrome [] = True
is_palindrome [x] = True
is_palindrome (x:xs) = (x == (last xs)) && is_palindrome (init xs)

my_head1 [] = error "empty list"
my_head1 (x:_) = x

my_head2 x
    | null x = error "empyty list"
    | otherwise = x !! 0

guess_my_number x
    | x > 27 = "Too high"
    | x < 27 = "Too low"
    | otherwise = "Correct!"

slope1 (x1,y1) (x2,y2) =    let dy = y2-y1
                                dx = x2-x1
                            in dy/dx

slope2 (x1,y1) (x2,y2) =    dy/dx
                            where   dy = y2-y1
                                    dx = x2-x1

convert (val, metric)
    | metric == "m" = (1.09361 * val, "yd")
    | metric == "yd" = (val/1.09361, "m")
    | metric == "L" = (0.264172 * val, "gal")
    | metric == "gal" = (val/0.264172, "L")
    | metric == "kg" = (2.20462 * val, "lb")
    | metric == "lb" = (val/2.20462, "kg")
    | otherwise = error "metric must be one of \"m\", \"yd\", \"L\", \"gal\", \"kg\", \"lb\""
    