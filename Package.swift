// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-tools-version:5.3
let package = Package(
    name: "MixpanelLibWrapper",
    products: [
        .library(
            name: "MixpanelLibWrapper",
            targets: ["MixpanelLibWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mixpanel/mixpanel-iphone", .upToNextMajor(from: "5.0.0")),
         ],
    targets: [
        .binaryTarget(
                 name: "mixpanelLib",
                 url:"https://github.com/YouSee/TV-KMP-Artifactory/raw/refs/heads/main/mixpanelLib.xcframework.zip",
                 checksum:"da45ba9671dfc104b6d2a3d4dc7215c937d77bdcdcddb9f8e765b94940ec0619"),
        .target(
            name: "MixpanelLibWrapper",
            dependencies: [
                .target(name: "mixpanelLib"),
                .product(name: "Mixpanel", package: "mixpanel-iphone")
            ],
            path: "Sources/MixpanelLibWrapper"
        ),
    ]
)


