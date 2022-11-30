module Fact where
fibonacci :: Integer -> Integer
fibonacci n = linfib 0 1 n

linfib acc1 acc2 n 
        | n==0 = acc1
        | n>=1 = linfib acc2 (acc2+acc1) (n-1)
        | n<0 = linfib (acc2-acc1) (acc1) (n+1)