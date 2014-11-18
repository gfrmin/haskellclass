safetail1 xs = if null xs then [] else tail xs

safetail2 [] = []
safetail2 (_:xs) = xs

safetail4 xs
  | null xs = []
  | otherwise = tail xs

safetail6 [] = []
safetail6 xs = tail xs

safetail8
  = \ xs ->
      case xs of
        [] -> []
        (_:xs) -> xs
