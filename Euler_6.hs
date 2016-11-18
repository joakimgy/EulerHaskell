diff :: Integer -> Integer
diff n = sumSquare n - squareSum n

sumSquare :: Integer -> Integer
sumSquare n = square (sum [1..n])

squareSum :: Integer -> Integer
squareSum n = sum [x*x | x <- [1..n]]

square :: Integer -> Integer
square x = x*x