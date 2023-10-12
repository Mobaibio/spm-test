// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiBiometric",
    products: [
        .library(
            name: "MobaiBiometric",
            targets: ["MobaiBiometric", "MobaiBiometricXCFramework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.0.0"),
    ],
    targets: [    
        .target(
            name: "MobaiBiometric",
            dependencies: [
                .target(name: "MobaiBiometricXCFramework"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]),
        .binaryTarget(
            name: "MobaiBiometricXCFramework",
            url: "https://downloads.mobai.dev/releases/ios/2.0.0-beta.8/MobaiBiometric.xcframework.zip",
            checksum: "be151694946ec4a9f5cbd4d680ea2e27aadc180a9a51b36480e3aa754f5d01f9"
        )
    ]
)
