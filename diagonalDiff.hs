diagonalDifference :: [String] -> String
diagonalDifference strings = show absoluteDiff
  where
    matrix = map intArray strings
    forwardSum = diagSum matrix
    backSum = diagSum (reverseMatrix matrix)
    difference = forwardSum - backSum
    absoluteDiff = abs difference

diagSum :: [[Int]] -> Int
diagSum x = sum (map lolx [0..n-1])
  where
    n = length x
    lolx = hoWTONAMEIT x
    
hoWTONAMEIT :: [[Int]] -> Int -> Int
hoWTONAMEIT list n = list !! n !! n


reverseMatrix :: [[Int]] -> [[Int]]
reverseMatrix x = map reverse x

intArray :: String -> [Int]
intArray x = map read $ words x

let x = ["11 2 4", "4 5 6", "10 8 -12"]
diagonalDifference x -- This equals 15
