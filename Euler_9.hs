isTriplet :: Int -> Int -> Int -> Bool
isTriplet a b c = (a < b && b < c) && ((a^2 + b^2) == c^2)

findTriplets :: Int
findTriplets = [a*b*c | a <- [1..1000], b <- [2..1000], c <- [3..1000], (a+b+c) == 1000, isTriplet a b c] !! 0