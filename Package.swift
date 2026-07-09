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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.34-beta.19/UnifoldSDK.xcframework.zip",
            checksum: "2cf8e17c1efe635f9ddfa7495e4b3c851cdcdfe6f7997da3ead66ed0add4c103"
        )
    ]
)
