answer = maximum $ filter (palindrome.show) $ mulList 100 999

mulList :: Int -> Int -> [Int]
mulList l u
    | u < l = []
    | otherwise = [u*x | x <- [l..u]] ++ mulList l (u-1)

palindrome :: String -> Bool
palindrome s
    | length s < 2 = True
    | head s == last s = palindrome $ init $ tail s 
    | otherwise = False