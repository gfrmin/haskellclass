all1 :: (a -> Bool) -> [a] -> Bool
all1 p = not . any (not . p)

any1 :: (a -> Bool) -> [a] -> Bool
any1 p = not . null . dropWhile (not . p)

any2 p xs = foldr (\ x acc -> (p x) || acc) False xs

any3 p xs = foldr (||) True (map p xs)
