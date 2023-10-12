// swift-tools-version: 5.6
// The swift-tools-ve/Users/radzivonbartoshyk/iOS Projects/libwebp.swift/Sourcesrsion declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libwebp-ios",
    platforms: [
        .macOS(.v10_10), .iOS(.v13), .macCatalyst(.v14), .tvOS(.v11), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "libwebp-ios",
            targets: ["libwebp", "libwebpmux", "libwebpdemux", "libsharpyuv"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "libwebp", path: "Sources/libwebp.xcframework"),
        .binaryTarget(name: "libwebpmux", path: "Sources/libwebpmux.xcframework"),
        .binaryTarget(name: "libwebpdemux", path: "Sources/libwebpdemux.xcframework"),
        .binaryTarget(name: "libsharpyuv", path: "Sources/libsharpyuv.xcframework")
    ]
)
