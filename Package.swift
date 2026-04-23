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
            nname: "UnifoldSDK",
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.23/UnifoldSDK.xcframework.zip",
            checksum: "3050b4773daddf8b4fa9bcc868ea8d4e1dae6ab6a1a6a53b07f234a3a7b0a4e9"
        )
    ]
)
