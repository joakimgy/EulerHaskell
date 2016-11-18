sMul :: Integer
sMul = head [x | x<-[40,60..], all (\y -> x`mod`y == 0) [2..20] ]