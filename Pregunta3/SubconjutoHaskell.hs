-- 1ra Forma
subconjunto :: Eq a => [a] -> [a] -> Bool
subconjunto xs ys = 
  [x | x <- xs, x 'elem' ys] == xs
 
-- 2da forma (recursión)
subconjuntoR :: Eq a => [a] -> [a] -> Bool
subconjuntoR [] _      = True
subconjuntoR (x:xs) ys = x 'elem' ys && subconjuntoR xs ys
 
p_subconjuntoR :: [Int] -> [Int] -> Bool
p_subconjuntoR xs ys =
  subconjuntoR xs ys == subconjunto xs ys

 
-- 3ra Forma (con all)
subconjuntoA :: Eq a => [a] -> [a] -> Bool
subconjuntoA xs ys = all ('elem' ys) xs
 

p_subconjuntoA :: [Int] -> [Int] -> Bool
p_subconjuntoA xs ys =
  subconjunto xs ys == subconjuntoA xs ys