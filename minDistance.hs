{-# LANGUAGE ViewPatterns #-}

import SortedList

minDistance :: SortedList Sorted Int -> Int
minDistance (extract -> l) = minimum $ zipWith (-) (tail l) l

readData :: String -> SortedList Sorted Int
readData = sortL . foldr cons empty . map read . words

main :: IO ()
main = interact $ show . minDistance . readData
