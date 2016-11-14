fibs :: [Int]
fibs = 1:1:zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs !! n
	
fibs_even :: [Int]
fibs_even = [ x | x <- fibs, even(x)]

listSum :: [Int] -> Int
listSum [] = 0
listSum (x:xs)
	| x < 4000000 = x + listSum xs
	| x > 4000000 = 0
	
-- Return function with listSum fibs_even