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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.29-beta.2/UnifoldSDK.xcframework.zip",
            checksum: "f64fd1181b7bb2b37e6dac3e4cc6e52617d693379c7a0d30c1b4a44dfd33c5cd"
        )
    ]
)
