// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MFRC522",
    products: [
        .library(
            name: "MFRC522",
            targets: ["MFRC522"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.1.5"),
    ],
    targets: [
        .target(
            name: "MFRC522",
            dependencies: ["SwiftyGPIO"]),
        .testTarget(
            name: "RPiTests",
            dependencies: ["MFRC522"]),
    ]
)
