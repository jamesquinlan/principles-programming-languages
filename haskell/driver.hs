import Primes
import Data.Text.Lazy.Read (double)
import Text.Read.Lex (Number)
main::IO()
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Drive Code for Code testing
--
-- Quinlan, James
-- 2023-09-16
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pow2 n = [2^x | x <- [0..n]]

mesh::[Float] -> [Float]
mesh xs = [(/) 1 x | x <- xs]

main = do
    print (isPrime 5 primes)
    --print (isPrime2 13 primes)
    --print (isPrime2 15 primes)
    print (pow2 5)
    print (mesh (pow2 5))
    print [1,2..32]
    print [x^2 | x <- [1..5]]
    print [2^x | x <- [0..5]]
   
