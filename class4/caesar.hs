import Data.Char

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

up2lower :: Char -> Char
up2lower c
  | isUpper c = int2let (let2int c + 32)
  | otherwise = c

lower2up :: Char -> Char
lower2up c
  | isLower c = int2let (let2int c - 32)
  | otherwise = c

shift :: Int -> Char -> Char
shift n c
  | isLower c = int2let ((let2int c + n) `mod` 26)
  | isUpper c = lower2up (int2let ((let2int (up2lower c) + n) `mod` 26))
  | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
