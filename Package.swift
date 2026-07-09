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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.34-beta.20/UnifoldSDK.xcframework.zip",
            checksum: "3ebb7f1f6a6344b2e70449f7e60f7debdd378fbb4d5035aec7fb450f31827fa6"
        )
    ]
)
