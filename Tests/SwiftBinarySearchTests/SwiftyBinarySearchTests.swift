import XCTest
@testable import SwiftBinarySearch

final class binarySearch_in_int_array: XCTestCase {

	let array: [Int] = [-4, -3, -1, 0, 1, 2, 3, 4, 5, 7, 9, 10]

	func test_value_exist() {

		XCTAssertEqual(binarySearch(for: 3, in: array), 6)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(binarySearch(for: 8, in: array), 10)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(binarySearch(for: -5, in: array), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(binarySearch(for: 11, in: array), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class binarySearch_in_double_array: XCTestCase {

	let array: [Double] = [-4.00, -3.00, -1.00, 0.00, 0.01, 0.03, 1.00, 2.00, 3.00, 4.00, 5.00, 7.00, 9.00, 10]

	func test_value_exist() {

		XCTAssertEqual(binarySearch(for: 3.00, in: array), 8)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(binarySearch(for: 8.99, in: array), 12)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(binarySearch(for: -4.09, in: array), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(binarySearch(for: 10.0001, in: array), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class binarySearch_in_string_array: XCTestCase {

	let array: [String] = ["a", "b", "d", "da", "dc", "e"]

	func test_value_exist() {

		XCTAssertEqual(binarySearch(for: "b", in: array), 1)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(binarySearch(for: "c", in: array), 2)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(binarySearch(for: "A", in: array), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(binarySearch(for: "f", in: array), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class binarySearchAndInsert_in_int_array_and_return: XCTestCase {

	func test_value_exist() {

		let array1 = [1, 2, 3, 5]
		let array2 = binarySearchAndInsert(element: 2, in: array1)

		XCTAssertEqual(array2, [1, 2, 2, 3, 5])

	}

	func test_value_does_not_exist() {

		let array1 = [1, 2, 3, 5]
		let array2 = binarySearchAndInsert(element: 4, in: array1)

		XCTAssertEqual(array2, [1, 2, 3, 4, 5])

	}

	func test_value_under_lower_bound() {

		let array1 = [1, 2, 3, 5]
		let array2 = binarySearchAndInsert(element: 0, in: array1)

		XCTAssertEqual(array2, [0, 1, 2, 3, 5])

	}

	func test_value_above_upper_bound() {

		let array1 = [1, 2, 3, 5]
		let array2 = binarySearchAndInsert(element: 10, in: array1)

		XCTAssertEqual(array2, [1, 2, 3, 5, 10])

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class binarySearchAndInsert_in_int_array_in_place: XCTestCase {

	func test_value_exist() {

		var array = [1, 2, 3, 5]
		binarySearchAndInsert(element: 2, in: &array)

		XCTAssertEqual(array, [1, 2, 2, 3, 5])

	}

	func test_value_does_not_exist() {

		var array = [1, 2, 3, 5]
		binarySearchAndInsert(element: 4, in: &array)

		XCTAssertEqual(array, [1, 2, 3, 4, 5])

	}

	func test_value_under_lower_bound() {

		var array = [1, 2, 3, 5]
		binarySearchAndInsert(element: 0, in: &array)

		XCTAssertEqual(array, [0, 1, 2, 3, 5])

	}

	func test_value_above_upper_bound() {

		var array = [1, 2, 3, 5]
		binarySearchAndInsert(element: 10, in: &array)

		XCTAssertEqual(array, [1, 2, 3, 5, 10])

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class convenience_function: XCTestCase {


	func test_convenient_function_search() {

		let array = [1, 2, 3, 5]

		XCTAssertEqual(search(for: 4, in: array), 3)

	}


	func test_convenient_function_searchAndInsert() {

		let array1 = [1, 2, 3, 5]
		let array2 = searchAndInsert(element: 2, in: array1)

		XCTAssertEqual(array2, [1, 2, 2, 3, 5])

	}

	func test_convenient_function_searchAndInsert_in_place() {

		var array = [1, 2, 3, 5]
		searchAndInsert(element: 2, in: &array)

		XCTAssertEqual(array, [1, 2, 2, 3, 5])

	}

	static var allTests = [
		("test_convenient_function_search", test_convenient_function_search),
		("test_convenient_function_searchAndInsert", test_convenient_function_searchAndInsert),
		("test_convenient_function_searchAndInsert_in_place", test_convenient_function_searchAndInsert_in_place)
	]

}

