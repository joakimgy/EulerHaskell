prime :: Int -> Int -> Int
prime n m
	| n `mod` m == 0 = prime (quot n m) m
	| m>n = m
	| otherwise = prime n (m+1)
	
highest_prime :: Int -> Int
highest_prime n = prime n 2