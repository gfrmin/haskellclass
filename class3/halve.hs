halve2 xs = splitAt (length xs `div` 2) xs

halve3 xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
            where n = length xs

halve6 xs = splitAt (div (length xs) 2) xs

halve7 xs = splitAt (length xs / 2) xs
