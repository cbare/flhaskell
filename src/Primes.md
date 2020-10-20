isqrt :: Integral a => a -> a
isqrt = floor . sqrt . fromIntegral

properfactors :: Integral a => a -> [a]
properfactors x = filter (\y->(x `mod` y == 0)) [2..(x-1)]

isprime :: Integral a => a -> Bool
isprime x = not $ any (\y->(x `mod` y == 0)) [2..(isqrt x)]

genprimes :: [Int]
genprimes = filter isprime [2..]

primefactors :: Integral a => a -> [a]
primefactors x = pf x 2
  where pf x a
          | a > x           = []
          | x `mod` a == 0  = a : (pf (x `div` a) a)
          | otherwise       = pf x (a+1)
