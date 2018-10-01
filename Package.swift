// swift-tools-version:4.2
// Managed by ice

import PackageDescription

let package = Package(

    name: "SwiftBinarySearch",

    products: [

        .library(name: "SwiftBinarySearch",
				 targets: ["SwiftBinarySearch"]),
        .library(name: "SwiftBinarySearchExtensions",
				 targets: ["SwiftBinarySearchExtensions"]),

    ],

    targets: [

        .target(name: "SwiftBinarySearch",
				dependencies: []),

        .target(name: "SwiftBinarySearchExtensions",
				dependencies: ["SwiftBinarySearch"]),

        .testTarget(name: "SwiftBinarySearchTests",
					dependencies: ["SwiftBinarySearch"]),

        .testTarget(name: "ExtensionsBinarySearchTests",
					dependencies: ["SwiftBinarySearchExtensions"]),

    ],

    swiftLanguageVersions: [.v4, .v4_2]

)
