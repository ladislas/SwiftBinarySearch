# Swifty Binary Search

## About

Simple binary search methods for arrays.

## Installation

With SPM, add the following to the dependencies of your `Package.swift`

```swift
.package(url: "https://github.com/ladislas/SwiftyBinarySearch", from: "1.0.0")
```

Then in your code place at the top of the files where you need Swift Events:

```swift
import SwiftyBinarySearch
```

## Usage

See source code and tests for more documentation and more examples.

```swift
let myArray = [0, 1, 2, 4]
let index = binarySearch(for: 3, in: myArray)
print(index) // --> "3"

// or

let myArray = [0, 1, 2, 4]
binarySearchAndInsert(for: 3, in: myArray)
print(myArray.description) // --> "[0, 1, 2, 3, 4]"
```

## Authors

* **Ladislas de Toldi** - [ladislas](https://github.com/ladislas)

## License

This project is licensed under Apache 2.0 - see the [LICENSE](LICENSE) file for details

