// swift-tools-version: 5.9

import PackageDescription

let package = Package(
   name: "SwiftCMasher",
   platforms: [
      .macOS(.v10_15),
      .iOS(.v13),
      .watchOS(.v6),
      .tvOS(.v13),
      .visionOS(.v1),
   ],
   products: [
      .library(name: "SwiftCMasher", targets: ["SwiftCMasher"]),
   ],
   targets: [
      .target(name: "SwiftCMasher"),
      .testTarget(name: "SwiftCMasherTests", dependencies: [ "SwiftCMasher" ]),
   ]
)
