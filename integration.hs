integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = h*((f a + f b)/2 + funcsum a b 1000000) where
    h = (b-a)/1000000
    funcsum a b partition | partition == 0 = 0
                          | otherwise = f (a + ((b-a) * partition)/1000000) + funcsum a b (partition - 1)

