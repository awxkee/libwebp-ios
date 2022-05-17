// swift-tools-version: 5.6
// The swift-tools-ve/Users/radzivonbartoshyk/iOS Projects/libwebp.swift/Sourcesrsion declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libwebp",
    platforms: [
        .macOS(.v10_10), .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "libwebp",
            targets: ["libwebp", "libwebp"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "libwebp", path: "Sources/libwebp.xcframework"),
        .binaryTarget(name: "libwebpmux", path: "Sources/libwebpmux.xcframework")
    ]
)
