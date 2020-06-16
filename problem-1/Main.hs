answer = sum $ [x | x <- [1..999], p x]
    where p n = mod n 3 == 0 || mod n 5 == 0
