// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Infrastructure",
    products: [
        .library(
            name: "Infrastructure",
            targets: ["Infrastructure"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0")
    ],
    targets: [
        .target(
            name: "Infrastructure",
            dependencies: ["RxSwift"]
        ),
        .testTarget(
            name: "InfrastructureTests",
            dependencies: ["Infrastructure"]),
    ]
)
