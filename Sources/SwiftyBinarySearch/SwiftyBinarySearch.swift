//
//  SwiftyBinarySearch.swift
//  SwiftyBinarySearch
//
//  Created by Ladislas de Toldi on 25/09/2018.
//

import Foundation

/**
Find the index of a value in a sorted array

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results
- to find a value in an unsorted array, use the [firstIndex(of:)](https://developer.apple.com/documentation/swift/defaultindices/2995243-firstindex) function

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
let index = binarySearch(for: 3, in: myArray)
print(index) --> "3"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
- Returns: the index where the value is or should be as `Int`
*/
public func binarySearch<T: Comparable>(for value: T, in array: [T]) -> Int {

	var lowerBound = 0
	var upperBound = array.count

	while lowerBound < upperBound {

		let midIndex = lowerBound + (upperBound - lowerBound) / 2

		if value == array[midIndex] {

			return midIndex

		} else {

			if value > array[midIndex] {

				lowerBound = midIndex + 1

			}
			else {

				upperBound = midIndex - 1

			}

		}
	}

	return lowerBound

}

/**
Find the index of a value in a sorted array and insert it in place

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
binarySearchAndInsert(for: 3, in: myArray)
print(myArray) --> "[0, 1, 2, 3, 4]"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
*/
public func binarySearchAndInsert<T: Comparable>(for value: T, in array: inout [T]) {

	array.insert(value, at: binarySearch(for: value, in: array))

}

/**
Find the index of a value in a sorted array and return a new array with the value inserted

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
let newArray = binarySearchAndInsert(for: 3, in: myArray)
print(newArray) --> "[0, 1, 2, 3, 4]"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
- Returns: an array with the value inserted
*/
public func binarySearchAndInsert<T: Comparable>(for value: T, in array: [T]) -> [T] {

	var localArray = array
	localArray.insert(value, at: binarySearch(for: value, in: array))
	return localArray

}

/**
Find the index of a value in a sorted array

*Convenience function of* `binarySearch(for:in:)`

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results
- to find a value in an unsorted array, use the [firstIndex(of:)](https://developer.apple.com/documentation/swift/defaultindices/2995243-firstindex) function

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
let index = binarySearch(for: 3, in: myArray)
print(index) --> "3"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
- Returns: the index where the value is or should be as `Int`
*/
public func search<T: Comparable>(for value: T, in array: [T]) -> Int {

	return binarySearch(for: value, in: array)

}

/**
Find the index of a value in a sorted array and return a new array with the value inserted

*Convenience function of* `binarySearchAndInsert(for:in:) -> []`

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
let newArray = binarySearchAndInsert(for: 3, in: myArray)
print(newArray) --> "[0, 1, 2, 3, 4]"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
- Returns: an array with the value inserted
*/
public func searchAndInsert<T: Comparable>(for value: T, in array: [T]) -> [T] {

	return binarySearchAndInsert(for: value, in: array)

}

/**
Find the index of a value in a sorted array and insert it in place

*Convenience function of* `binarySearchAndInsert(for:in:)`

## Important Notes

- the `array` must be sorted first
- the function will not work on unsorted arrays and will return false results

## Usage Example:

```swift
let myArray = [0, 1, 2, 4]
binarySearchAndInsert(for: 3, in: myArray)
print(myArray) --> "[0, 1, 2, 3, 4]"
```

- Parameter value: the value whose index you want to find
- Parameter array: the array to be searched
*/
public func searchAndInsert<T: Comparable>(for value: T, in array: inout [T]) {

	return binarySearchAndInsert(for: value, in: &array)

}
