// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "Decodable",
  products: [
    .library(
        name: "Decodable",
        type: .dynamic,
        targets: ["Decodable", "DecodableCore"]
    ),
  ],
  targets: [
    .target(
      name: "DecodableCore",
      dependencies: [],
      swiftSettings: [.unsafeFlags(["-enable-library-evolution"])]
    ),
    .target(
      name: "Decodable",
      dependencies: ["DecodableCore"]
    ),
   ]
)
