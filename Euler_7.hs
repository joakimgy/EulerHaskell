--1. Declare p to be prime, and cross off all the multiples of that number in the
--table, starting from p2;
--2. Find the next number in the table after p that is not yet crossed off and set
--p to that number; and then repeat from step 1.

-- Not The Sieve of Eratosthenes
primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]
	
nthPrime :: Int -> Integer
nthPrime n = primes !! n

-- Faster method to create a list of prime numbers
primes' :: [Integer]
primes' = 2 : [x | x <- [3..], isPrime x]

-- Check if x is a prime number (x `mod` p > 0 for p*p <= x)
isPrime :: Integer -> Bool
isPrime x = all (\p -> x `mod` p > 0) (factorsToTry x)
	where
		factorsToTry x = takeWhile (\p -> p*p <= x) primes'