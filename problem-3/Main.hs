answer = maximum $ filter ((==[]).next_factors) $ next_factors 600851475143

next_factors :: Int -> [Int]
next_factors n = mirror n $ filter ((==0).(mod n)) [2..lim n]
    where
        lim = floor.sqrt.fromIntegral
        mirror n xs = xs ++ (reverse $ map (floor.((fromIntegral n)/).fromIntegral) xs)