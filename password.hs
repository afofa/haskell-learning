import Data.Char

is_strong_password :: String -> Bool
is_strong_password x = (length x >= 15) && (length (filter isUpper x) >= 1) && (length (filter isLower x) >= 1) && (length (filter isDigit x) >= 1)