// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let settings: [SwiftSetting]
settings = [
    .define("MY_CUSTOM_DEBUG", .when(configuration: .debug)),
    .define("MY_CUSTOM_RELEASE", .when(configuration: .release)),
]

let package = Package(
    name: "StartPlayer",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "StartPlayer",
            targets: ["StartPlayer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.5.0")
    ],
    targets: [
        .target(
            name: "StartPlayer",
            dependencies: ["RxSwift"],
            swiftSettings: settings
        ),
        .testTarget(
            name: "StartPlayerTests",
            dependencies: ["StartPlayer"]),
    ]
)
