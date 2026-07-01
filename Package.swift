// swift-tools-version: 5.9
// UnifoldSDK - iOS SDK for Unifold deposit flows

import PackageDescription

let package = Package(
    name: "UnifoldSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "UnifoldSDK",
            targets: ["UnifoldSDK"]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "UnifoldSDK",
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.34-beta.3/UnifoldSDK.xcframework.zip",
            checksum: "91c5f6775cc492cc14f90b27468ec4b66d696475d63502e8b5a2b1b2fe1d0b3c"
        )
    ]
)
