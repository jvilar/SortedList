module SortedList (
  SortedList,
  Sorted,
  Unsorted,
  empty,
  singleton,
  cons,
  sortL,
  extract
) where

import Data.List(sort)

newtype SortedList s a = SortedList [a]

data Sorted
data Unsorted

empty :: SortedList s a
empty = SortedList []

singleton :: a -> SortedList s a
singleton x = SortedList [x]

cons :: a -> SortedList s a -> SortedList Unsorted a
cons x (SortedList xs) = SortedList $ x:xs

sortL :: Ord a => SortedList s a -> SortedList Sorted a
sortL (SortedList xs) = SortedList $ sort xs

extract :: SortedList Sorted a -> [a]
extract (SortedList xs) = xs
