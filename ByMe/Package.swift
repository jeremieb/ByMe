// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import SwiftUI

let package = Package(
    name: "ByMe",
    products: [
        .library(
            name: "ByMe",
            targets: ["ByMe"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ByMe",
            dependencies: [],
            resources: [.process("Sources/*.xcassets"), .process("README.md")]
        ),
        .testTarget(
            name: "ByMeTests",
            dependencies: ["ByMe"]),
    ]
)
