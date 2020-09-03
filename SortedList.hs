module SortedList (
  SortedList,
  Sorted,
  Unsorted,
  Empty,
  NonEmpty,
  empty,
  singleton,
  cons,
  sortL,
  extract
) where

import Data.List(sort)

newtype SortedList s e a = SortedList [a]

data Sorted
data Unsorted

data Empty
data NonEmpty

empty :: SortedList s Empty a
empty = SortedList []

singleton :: a -> SortedList s NonEmpty a
singleton x = SortedList [x]

cons :: a -> SortedList s e a -> SortedList Unsorted NonEmpty a
cons x (SortedList xs) = SortedList $ x:xs

sortL :: Ord a => SortedList s e a -> SortedList Sorted e a
sortL (SortedList xs) = SortedList $ sort xs

extract :: SortedList Sorted e a -> [a]
extract (SortedList xs) = xs
