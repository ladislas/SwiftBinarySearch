# Swifty Binary Search

[![badge-travis]][travis]
[![badge-language]][swift.org]
![Crates.io](https://img.shields.io/crates/l/rustc-serialize.svg)

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

### As standalone functions

```swift
let myArray = [0, 1, 2, 4]
let index = binarySearch(for: 3, in: myArray)
print(index) // --> "3"

// or

let myArray = [0, 1, 2, 4]
binarySearchAndInsert(for: 3, in: myArray)
print(myArray.description) // --> "[0, 1, 2, 3, 4]"
```

### As Array extension

```swift
let myArray = [0, 1, 2, 4]
let index = myArray.binarySearch(for: 3)
print(index) // --> "3"

// or

var myArray = [0, 1, 2, 4] // declare array as var
myArray.binarySearchAndInsertInplace(element: 3)
print(myArray.description) // --> "[0, 1, 2, 3, 4]"
```

## Authors

Made with ❤️ by:

* **Ladislas de Toldi** - [ladislas](https://github.com/ladislas)

## License

MIT/Apache-2.0 @ Ladislas de Toldi

[swift.org]: https://swift.org/
[travis]: https://travis-ci.org/ladislas/SwiftyBinarySearch
[swiftpm]: https://swift.org/package-manager/

[badge-language]: https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat
[badge-travis]: https://travis-ci.org/ladislas/SwiftyBinarySearch.svg?branch=develop

