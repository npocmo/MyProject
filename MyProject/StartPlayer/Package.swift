// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StartPlayer",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "StartPlayer",
            targets: ["StartPlayer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "StartPlayer",
            dependencies: []),
        .testTarget(
            name: "StartPlayerTests",
            dependencies: ["StartPlayer"]),
    ]
)
