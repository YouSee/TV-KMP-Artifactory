// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mixpanelLib",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "mixpanelLib",
            targets: ["mixpanelLib"]),
    ],
    dependencies: [
             .package(
                 url: "https://github.com/mixpanel/mixpanel-iphone",
                 from: "2.8.0"
             )
         ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
                 name: "mixpanelLib",
                 url: "https://github.com/YouSee/TV-KMP-Artifactory/raw/refs/heads/main/mixpanelLib.xcframework.zip",
                 checksum:"da45ba9671dfc104b6d2a3d4dc7215c937d77bdcdcddb9f8e765b94940ec0619")
    ]
)
