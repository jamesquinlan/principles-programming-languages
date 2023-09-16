
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Drive Code for Code testing
--
-- Quinlan, James
-- 2023-09-16
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- List sum (sum of list)
lstsum::[Int] -> Int 
lstsum [] = 0
lstsum (x:xs) = x + lstsum xs

-- Product of list
prod::[Int] -> Int
-- prod x = foldr (*) 1 x
prod [] = 1
prod (x:xs) =  x * prod xs

-- Find the sum of square odd integers from 1 to n
sq [] = 0
sq (x:xs) = x*x : sq xs

-- ss n = foldr (+) 1 (sq [3..n])
ss n = lstsum [x*x | x <- [1,2..n]]

main::IO()
main = do

    -- 1. Write code that produces the sum a list
    print (lstsum [2,5,9,3])
    print (prod [1,2,3,4])
    print (ss 20)
    print [1,2..20]