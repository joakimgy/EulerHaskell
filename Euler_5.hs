--sMul :: Integer
--sMul = head [ x | x <- [2..], check x ]

--check :: Integer -> Bool
--check n = all (==0) [n `mod` x | x <- [2..19] ]

sMul :: Integer
sMul = foldr1 lcm [1..20]