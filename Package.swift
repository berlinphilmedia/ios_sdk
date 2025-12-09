// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "AdjustSdk",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(name: "AdjustSdk", targets: ["AdjustSdk"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/adjust/adjust_signature_sdk.git",
            .exact("3.62.0")
        )
    ],
    targets: [
        .target(
            name: "AdjustSdk",
            dependencies: [
                .product(name: "AdjustSignature", package: "adjust_signature_sdk")
            ],
            path: "Adjust",
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
            ],
            cSettings: [
                .headerSearchPath(""),
                .headerSearchPath("Internal")
            ]
        )
    ]
)
