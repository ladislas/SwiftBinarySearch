import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(binarySearch_in_int_array.allTests),
        testCase(binarySearch_in_double_array.allTests),
		testCase(binarySearch_in_string_array.allTests),
		testCase(binarySearchAndInsert_in_int_array_and_return.allTests),
		testCase(binarySearchAndInsert_in_int_array_in_place.allTests),
		testCase(convenience_function.allTests),
    ]
}
#endif
