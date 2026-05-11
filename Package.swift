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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.29-beta.4/UnifoldSDK.xcframework.zip",
            checksum: "6c8897662c9cf8db9a8db1d9f9608d5df4f4c6f913cdb109f17a07c749d4e0d7"
        )
    ]
)
