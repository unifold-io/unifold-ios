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
            targets: ["UnifoldSDK", "UnifoldSDKDependencies"]
        ),
    ],
    dependencies: [
        // UnifoldSDK.framework dynamically links IdensicMobileSDK.framework, so it
        // must be resolved and embedded alongside the binary or the host app
        // crashes at launch with "Library not loaded".
        .package(url: "https://github.com/SumSubstance/IdensicMobileSDK-iOS.git", from: "1.47.0"),
    ],
    targets: [
        .binaryTarget(
            name: "UnifoldSDK",
            url: "https://github.com/unifold-io/unifold-ios/releases/download/0.1.49-beta.1/UnifoldSDK.xcframework.zip",
            checksum: "2e80e58002c744257409f50db237ce894476f043b594d9a12e0a84e0e7131dbc"
        ),
        // Binary targets can't declare dependencies; this target carries them
        // into the `UnifoldSDK` product.
        .target(
            name: "UnifoldSDKDependencies",
            dependencies: [
                .product(name: "IdensicMobileSDK", package: "IdensicMobileSDK-iOS"),
            ],
            path: "Sources/UnifoldSDKDependencies"
        ),
    ]
)
