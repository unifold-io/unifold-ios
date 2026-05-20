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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.31-beta.5/UnifoldSDK.xcframework.zip",
            checksum: "34f7c1c3ae83a9ff18423e3229b67f1d035982fcc1a08cddaa6031a7aa9e4885"
        )
    ]
)
