multiples :: Integer
multiples = sum_list [ x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]
		
		
sum_list :: [Integer] -> Integer
sum_list []		= 0
sum_list (x:xs) = x + sum_list(xs)