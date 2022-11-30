seqA :: Integer -> Integer
seqA n
    |n==0 = 1
    |n==1 = 2
    |n==2 = 3
    |n>=3 = let
        lin acc1 acc2 acc3 0 = acc3
        lin acc1 acc2 acc3 n = lin acc2 acc3 (acc3 + acc2 - 2*acc1) (n-1)
    in lin 1 2 3 (n-2)
    |otherwise = error "bad"