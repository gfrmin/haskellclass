divides :: Int -> Int -> Bool
divides n factor
  | n `mod` factor == 0 = True
  | otherwise = False

divisors :: Int -> [Int]
