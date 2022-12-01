esPrimo :: Integer -> Bool
esPrimo x =length (divisores x) == 2    
  
primosHasta :: Integer -> [Integer]
primosHasta n = [x | x <- [1..n], esPrimo x]

primosHasta' :: Integer -> [Integer]
primosHasta' n = filter esPrimo [1..n]

p1_primos x = primosHasta x == primosHasta' x
