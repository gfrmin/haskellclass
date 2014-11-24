sumsqreven :: [Int] -> Int
sumsqreven = sum . compose [map (^2), filter even]

compose :: [a -> a] -> a -> a
compose = foldr (.) id
