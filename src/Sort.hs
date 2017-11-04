quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let ltOrEq = filter (<=x) xs
        gt = filter (x<) xs
    in quicksort ltOrEq ++ [x] ++ quicksort gt
