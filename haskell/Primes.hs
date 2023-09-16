-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Prime number functions
--   To work with prime numbers
--
-- Quinlan, James
-- 2023-09-16
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
module Primes where

primes = sieve [2..] where
  sieve (p:ps) =
    p : sieve [x | x <- ps, x `mod` p /= 0]

isPrime p [] = False
isPrime p (x:xs)
  | p == x = True
  | otherwise = isPrime p xs

primesltn n = take n primes

--isPrime2 p x = p `elem`

--istwinprime :: Integer -> Integer -> Bool
--istwinprime p q = abs(p - q) == 2 && isPrime p primes && isPrime q primes
-- twinprimes primes