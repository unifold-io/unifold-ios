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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.31-beta.4/UnifoldSDK.xcframework.zip",
            checksum: "3055e1c7fd7ab0a9e2bbfb39ad53e3741954a1cecf902a8b276da7bd49418d69"
        )
    ]
)
