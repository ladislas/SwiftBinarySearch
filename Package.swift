// swift-tools-version:4.2
// Managed by ice

import PackageDescription

let package = Package(
    name: "SwiftyBinarySearch",
    products: [
        .library(name: "SwiftyBinarySearch", targets: ["SwiftyBinarySearch"]),
    ],
    targets: [
        .target(name: "SwiftyBinarySearch", dependencies: []),
        .testTarget(name: "SwiftyBinarySearchTests", dependencies: ["SwiftyBinarySearch"]),
    ]
)
