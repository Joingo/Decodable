// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "Decodable",
  products: [
    .library(
        name: "Decodable",
        type: .dynamic,
        targets: ["Decodable"]
    ),
  ],
  targets: [
    .target(
      name: "Decodable",
      dependencies: [],
      swiftSettings: [.unsafeFlags(["-enable-library-evolution"])]
    ),
   ]   
)
