//
//  BinarySearch.swift
//  BinarySearch Array Extension
//
//  Created by Ladislas de Toldi on 26/09/2018.
//

import Foundation
import SwiftBinarySearch

extension Array where Element: Comparable {

	//
	// MARK: - Binary search
	//

	/**
	Find the index of a value in a sorted array

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results
	- to find a value in an unsorted array, use the `firstIndex(of:)` function

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	let index = myArray.binarySearch(for: 3)
	print(index) --> "3"
	```

	- Parameter value: the value whose index you want to find
	- Returns: the index where the value is or should be as `Int`
	*/
	public func binarySearch<T: Comparable>(for value: T) -> Int {

		return SwiftBinarySearch.binarySearch(for: value, in: self as! [T])

	}

	/**
	Find the index of a value in a sorted array

	*Convenience function of* `binarySearch(for:in:)`

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results
	- to find a value in an unsorted array, use the `firstIndex(of:)` function

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	let index = myArray.binarySearch(for: 3)
	print(index) --> "3"
	```

	- Parameter value: the value whose index you want to find
	- Returns: the index where the value is or should be as `Int`
	*/
	public func search<T: Comparable>(for value: T) -> Int {

		return self.binarySearch(for: value)

	}


	//
	// MARK: - Binary search and insert
	//

	/**
	Find the index of a value in a sorted array and return a new array with the value inserted

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	let newArray = myArray.binarySearchAndInsert(element: 3)
	print(newArray) --> "[0, 1, 2, 3, 4]"
	```

	- Parameter element: the element that must be inserted
	- Returns: a new array with the value inserted
	*/
	public func binarySearchAndInsert<T: Comparable>(element: T) -> [T] {

		var array = self as! [T]
		array.insert(element, at: self.binarySearch(for: element))
		return array

	}

	/**
	Find the index of a value in a sorted array and return a new array with the value inserted

	*Convenience function of* `binarySearchAndInsert(element:) -> []`

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	let newArray = myArray.binarySearchAndInsert(element: 3)
	print(newArray) --> "[0, 1, 2, 3, 4]"
	```

	- Parameter element: the element that must be inserted
	- Returns: a new array with the value inserted
	*/
	public func searchAndInsert<T: Comparable>(element: T) -> [T] {

		return self.binarySearchAndInsert(element: element)

	}


	//
	// MARK: - Binary search and insert in place
	//

	/**
	Find the index of an element in a sorted array and insert it in place

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	myArray.binarySearchAndInsertInplace(element: 3)
	print(myArray) --> "[0, 1, 2, 3, 4]"
	```

	- Parameter element: the element that must be inserted
	*/
	public mutating func binarySearchAndInsertInplace<T: Comparable>(element: T) {

		var array = self as! [T]
		array.insert(element, at: self.binarySearch(for: element))
		self = array as! [Element]

	}

	/**
	Find the index of a value in a sorted array and insert it in place

	*Convenience function of* `binarySearchAndInsertInplace(element:)`

	## Important Notes

	- the `array` must be sorted first
	- the function will not work on unsorted arrays and will return false results

	## Usage Example:

	```swift
	let myArray = [0, 1, 2, 4]
	myArray.binarySearchAndInsertInplace(element: 3)
	print(myArray) --> "[0, 1, 2, 3, 4]"
	```

	- Parameter element: the element that must be inserted
	*/
	public mutating func searchAndInsertInplace<T: Comparable>(element: T) {

		self.binarySearchAndInsertInplace(element: element)

	}

}

