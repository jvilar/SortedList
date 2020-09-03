{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ViewPatterns #-}

import SortedList

minDistance :: SortedList Sorted NonEmpty Int -> Int
minDistance (extract -> l) = minimum $ zipWith (-) (tail l) l

readData :: String -> SortedList Sorted NonEmpty Int
readData = (\case
              [] -> error "Empty input"
              (x:xs) -> sortL . foldr cons (singleton $ read x) $ map read xs) . words

main :: IO ()
main = interact $ show . minDistance . readData
