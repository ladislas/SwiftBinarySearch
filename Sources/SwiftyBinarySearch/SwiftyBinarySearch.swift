//
//  SwiftyBinarySearch.swift
//  SwiftyBinarySearch
//
//  Created by Ladislas de Toldi on 25/09/2018.
//

import Foundation

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

public func binarySearchAndInsert<T: Comparable>(for value: T, in array: inout [T]) {

	array.insert(value, at: binarySearch(for: value, in: array))

}

public func binarySearchAndInsert<T: Comparable>(for value: T, in array: [T]) -> [T] {

	var localArray = array
	localArray.insert(value, at: binarySearch(for: value, in: array))
	return localArray

}

public func search<T: Comparable>(for value: T, in array: [T]) -> Int {

	return binarySearch(for: value, in: array)

}

public func searchAndInsert<T: Comparable>(for value: T, in array: [T]) -> [T] {

	return binarySearchAndInsert(for: value, in: array)

}

public func searchAndInsert<T: Comparable>(for value: T, in array: inout [T]) {

	return binarySearchAndInsert(for: value, in: &array)

}
