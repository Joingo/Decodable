// swift-tools-version: 5.5

import PackageDescription

let package = Package(
  name: "Decodable",
  products: [
    .library(
        name: "Decodable",
        targets: ["Decodable"]
    ),
  ],
  targets: [
    .target(
      name: "Decodable",
      dependencies: []
    ),
   ]   
)
