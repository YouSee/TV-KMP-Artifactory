// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSDKFrameworkWrapper",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestSDKFrameworkWrapper",
            targets: ["TestSDKFrameworkWrapper"]),
    ],
    dependencies: [
             .package(
                name:"Mixpanel",
                 url: "https://github.com/mixpanel/mixpanel-iphone",
                 from: "2.8.0"
             )
         ],
    targets: [
        .target(
                    name: "TestSDKFrameworkWrapper",         // <--- new wrapper
                    dependencies: [
                        .target(name: "mixpanelLib"),
                        .product(name: "Mixpanel", package: "Mixpanel")// <-- reference the actual binary target here
                    ],
                    path: "TestSDKFrameworkWrapper",
                    publicHeadersPath: ""
                ),
        .binaryTarget(
                 name: "mixpanelLib",
                 url: "https://github.com/YouSee/TV-KMP-Artifactory/raw/refs/heads/main/mixpanelLib.xcframework.zip",
                 checksum:"da45ba9671dfc104b6d2a3d4dc7215c937d77bdcdcddb9f8e765b94940ec0619")
    ]
)


