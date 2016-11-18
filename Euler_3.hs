prime :: Int -> Int -> [Int]
prime n m
	| n `mod` m == 0 = m:prime (quot n m) m
	| m>n = []
	| otherwise = prime n (m+1)

primeFactor :: Int -> [Int]
primeFactor n = prime n 2

largest_prime :: Int -> Int
largest_prime n = last (primeFactor n)