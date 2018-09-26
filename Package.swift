// swift-tools-version:4.2
// Managed by ice

import PackageDescription

let package = Package(

    name: "SwiftyBinarySearch",

    products: [

        .library(name: "SwiftyBinarySearch",
				 targets: ["SwiftyBinarySearch"]),
        .library(name: "SwiftyBinarySearchExtensions",
				 targets: ["SwiftyBinarySearchExtensions"]),

    ],

    targets: [

        .target(name: "SwiftyBinarySearch",
				dependencies: []),

        .target(name: "SwiftyBinarySearchExtensions",
				dependencies: ["SwiftyBinarySearch"]),

        .testTarget(name: "SwiftyBinarySearchTests",
					dependencies: ["SwiftyBinarySearch"]),

        .testTarget(name: "ExtensionsBinarySearchTests",
					dependencies: ["SwiftyBinarySearchExtensions"]),

    ]
)
