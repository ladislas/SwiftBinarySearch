import XCTest
@testable import SwiftyBinarySearchExtensions

final class array_extension_binarySearch_in_int_array: XCTestCase {

	let array: [Int] = [-4, -3, -1, 0, 1, 2, 3, 4, 5, 7, 9, 10]

	func test_value_exist() {
		
		XCTAssertEqual(array.binarySearch(for: 3), 6)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(array.binarySearch(for: 8), 10)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(array.binarySearch(for: -5), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(array.binarySearch(for: 11), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class array_extension_binarySearch_in_double_array: XCTestCase {

	let array: [Double] = [-4.00, -3.00, -1.00, 0.00, 0.01, 0.03, 1.00, 2.00, 3.00, 4.00, 5.00, 7.00, 9.00, 10]

	func test_value_exist() {

		XCTAssertEqual(array.binarySearch(for: 3.00), 8)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(array.binarySearch(for: 8.99), 12)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(array.binarySearch(for: -4.09), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(array.binarySearch(for: 10.0001), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class array_extension_binarySearch_in_string_array: XCTestCase {

	let array: [String] = ["a", "b", "d", "da", "dc", "e"]

	func test_value_exist() {

		XCTAssertEqual(array.binarySearch(for: "b"), 1)

	}

	func test_value_does_not_exist() {

		XCTAssertEqual(array.binarySearch(for: "c"), 2)

	}

	func test_value_under_lower_bound() {

		XCTAssertEqual(array.binarySearch(for: "A"), 0)

	}

	func test_value_above_upper_bound() {

		XCTAssertEqual(array.binarySearch(for: "f"), array.count)

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class array_extension_binarySearchAndInsert_in_int_array_in_place: XCTestCase {

	func test_value_exist() {

		var array = [1, 2, 3, 5]
		array.binarySearchAndInsertInplace(element: 2)

		XCTAssertEqual(array, [1, 2, 2, 3, 5])

	}

	func test_value_does_not_exist() {

		var array = [1, 2, 3, 5]
		array.binarySearchAndInsertInplace(element: 4)

		XCTAssertEqual(array, [1, 2, 3, 4, 5])

	}

	func test_value_under_lower_bound() {

		var array = [1, 2, 3, 5]
		array.binarySearchAndInsertInplace(element: 0)

		XCTAssertEqual(array, [0, 1, 2, 3, 5])

	}

	func test_value_above_upper_bound() {

		var array = [1, 2, 3, 5]
		array.binarySearchAndInsertInplace(element: 10)

		XCTAssertEqual(array, [1, 2, 3, 5, 10])

	}

	static var allTests = [
		("test_value_exist", test_value_exist),
		("test_value_does_not_exist", test_value_does_not_exist),
		("test_value_under_lower_bound", test_value_under_lower_bound),
		("test_value_above_upper_bound", test_value_above_upper_bound)
	]

}

final class array_extension_binarySearchAndInsert_in_int_array_and_return: XCTestCase {

	func test_value_exist() {

		let array1 = [1, 2, 3, 5]
		let array2 = array1.binarySearchAndInsert(element: 2)

		XCTAssertEqual(array2, [1, 2, 2, 3, 5])

	}

	func test_value_does_not_exist() {

		let array1 = [1, 2, 3, 5]
		let array2 = array1.binarySearchAndInsert(element: 4)

		XCTAssertEqual(array2, [1, 2, 3, 4, 5])

	}

	func test_value_under_lower_bound() {

		let array1 = [1, 2, 3, 5]
		let array2 = array1.binarySearchAndInsert(element: 0)

		XCTAssertEqual(array2, [0, 1, 2, 3, 5])

	}

	func test_value_above_upper_bound() {

		let array1 = [1, 2, 3, 5]
		let array2 = array1.binarySearchAndInsert(element: 10)

		XCTAssertEqual(array2, [1, 2, 3, 5, 10])

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

		XCTAssertEqual(array.search(for: 4), 3)

	}


	func test_convenient_function_searchAndInsert() {

		let array1 = [1, 2, 3, 5]
		let array2 = array1.searchAndInsert(element: 2)

		XCTAssertEqual(array2, [1, 2, 2, 3, 5])

	}

	func test_convenient_function_searchAndInsert_in_place() {

		var array = [1, 2, 3, 5]
		array.searchAndInsertInplace(element: 2)

		XCTAssertEqual(array, [1, 2, 2, 3, 5])

	}

	static var allTests = [
		("test_convenient_function_search", test_convenient_function_search),
		("test_convenient_function_searchAndInsert", test_convenient_function_searchAndInsert),
		("test_convenient_function_searchAndInsert_in_place", test_convenient_function_searchAndInsert_in_place)
	]

}

