riffle1 xs ys = concat [[x,y] | x <- xs, y <- ys]

riffle2 xs ys = concat [[x,y] | (x,y) <- xs `zip` ys]
