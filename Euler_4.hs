reverseInt :: Integer -> Integer
reverseInt n = read (reverse (show n)) :: Integer

palindrome :: Integer -> Bool
palindrome n = n == (reverseInt n)

bigPal :: Integer
bigPal = maximum [ x*y | x <- [1..999], y <- [1..999], palindrome (x*y) ]