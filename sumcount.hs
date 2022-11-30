sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (a,b) where
    a = aFunc 0 x
    b = bFunc 0 x
    aFunc acc x | x==0 = acc
                | x<0 = aFunc acc (-x)
                | otherwise = aFunc (acc + mod x 10) (div x 10)
    bFunc acc x | x==0 && acc == 0 = 1
                | x==0 = acc
                | x<0 = bFunc acc (-x)
                | otherwise =  bFunc (acc + 1) (div x 10)