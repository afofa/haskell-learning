gregory_term :: Int -> Double
gregory_term x = 4 * (-1)^(x+1) / (2.0*k - 1)
    where k = fromIntegral x	

pi_estimate n = sum (map gregory_term [1..n])