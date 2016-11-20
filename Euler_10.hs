import Euler_7

sumPrime :: Integer -> [Integer] -> Integer
sumPrime n (x:xs)
	| x < n = x + sumPrime n xs
	| otherwise = 0

euler_10 :: Integer
euler_10 = sumPrime 2000000 primes'