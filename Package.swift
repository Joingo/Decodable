// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "Decodable",
  products: [
    .library(
        name: "Decodable",
        type: .dynamic,
        targets: ["DecodableCore"]
    ),
  ],
  targets: [
    .target(
      name: "DecodableCore",
      dependencies: [],
      swiftSettings: [.unsafeFlags(["-enable-library-evolution", "-module-name", "Decodable"])]
    ),
   ]
)
