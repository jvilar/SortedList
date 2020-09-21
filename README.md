# SortedList
A simple sample of using phantom types. The type `SorteList` has two (three in the empty version)
type parameters. The first one `s` can be used to control whether the list of elements (or the type
determined by `a` is sorted or not. E.g. a function receiving a `SortedList Sorted Int` knows that
`extract` of that list will return a sorted list.

As `SortedList` is a `newtype`, there is no runtime overhead in the checking.

Two tags:

+ simple: the types can be used to ensure the list is sorted

+ empy: the types can be used also to ensure the list is not empty
