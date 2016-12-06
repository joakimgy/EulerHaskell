-- Creates a 2-dimensional grid
grid :: Int -> Int -> a -> [[a]]
grid x y = replicate x . replicate y

-- Creates a 20x20 grids of 1's
grid20x20 :: [[Int]]
grid20x20 = grid 20 20 1

-- Product of 4 adjacent numbers starting from (x,y) in grid g (right, down, rightdown diagonal)
greatest :: [[Int]] -> Int -> Int -> Int
greatest g x y
	| x>=0 && x<17 && y>=0 && y<17 = maximum [
	product [g!!a!!y | a <- [x..x+3]],
	product [g!!x!!b | b <- [y..y+3]],
	product [g!!x!!y, g!!(x+1)!!(y+1), g!!(x+2)!!(y+2), g!!(x+3)!!(y+3)]]
	| otherwise = 0

-- Find the greatest product of four adjacent numbers of a 20x20 grid
greatest20x20 :: [[Int]] -> Int
greatest20x20 g = maximum [greatest g x y | x <- [0..19], y <- [0..19]]