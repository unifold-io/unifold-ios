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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.36-beta.3/UnifoldSDK.xcframework.zip",
            checksum: "cf19a52c2d7b7e6c7007c5a35373a8ebf44b6900a15bd9d87fda44b1d6494b76"
        )
    ]
)
