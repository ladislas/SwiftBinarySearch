# Swift Binary Search

[![swift v4.2](https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat)](swift.org)
[![Build Status](https://travis-ci.org/ladislas/SwiftBinarySearch.svg)](https://travis-ci.org/ladislas/SwiftBinarySearch)
[![SonarCloud](https://sonarcloud.io/api/project_badges/measure?project=ladislas_SwiftBinarySearch&metric=alert_status)](https://sonarcloud.io/dashboard?id=ladislas_SwiftBinarySearch)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=ladislas_SwiftBinarySearch&metric=coverage)](https://sonarcloud.io/dashboard?id=ladislas_SwiftBinarySearch)
[![SwiftBinarySearch](https://img.shields.io/badge/license-MIT%2FApache--2.0-blue.svg)](https://github.com/ladislas/SwiftBinarySearch/blob/master/LICENSE)

## About

Simple binary search methods for arrays.

## Installation

With SPM, add the following to the dependencies of your `Package.swift`

```swift
.package(url: "https://github.com/ladislas/SwiftBinarySearch", from: "1.0.0")
```

Then in your code place at the top of the files where you need Swift Events:

```swift
import SwiftBinarySearch
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
