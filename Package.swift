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
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.30-beta.1/UnifoldSDK.xcframework.zip",
            checksum: "16142da53489a23bbbd008134ebb2a426f8ceed0963960ab7a46e70eacde9e47"
        )
    ]
)
