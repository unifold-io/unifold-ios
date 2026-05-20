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
            naame: "UnifoldSDK",
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.31-beta.2/UnifoldSDK.xcframework.zip",
            checksum: "b3f72cc6da58f08c301850352e085d0e15b15f75ccfcbe89f69b44dcf4b06c19"
        )
    ]
)
