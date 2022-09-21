// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Winware",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Winware",
            targets: ["Winware"]
        )
    ],
    targets: [
        .binaryTarget(name: "Winware", path: "Winware.xcframework")
    ]
)
