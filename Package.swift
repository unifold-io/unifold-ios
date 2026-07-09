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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.34-beta.22/UnifoldSDK.xcframework.zip",
            checksum: "26c8abdc12dfcd6a02f70cd0ae8bdd2a8ebb6761693a68055bd3b0e6198d2844"
        )
    ]
)
