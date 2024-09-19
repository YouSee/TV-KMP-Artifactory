// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "mixpanelLib",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "mixpanelLib", targets: ["mixpanelLib"])
   ],
   dependencies: [
         .package(
             url: "https://github.com/mixpanel/mixpanel-iphone",
             from: "2.8.0"
         )
     ],
   targets: [
      .binaryTarget(
         name: "mixpanelLib",
         url: "https://github.com/YouSee/TV-KMP-Artifactory/raw/refs/heads/main/mixpanelLib.xcframework.zip",
         checksum:"da45ba9671dfc104b6d2a3d4dc7215c937d77bdcdcddb9f8e765b94940ec0619")
   ]
)
