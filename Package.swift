// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "cuid",
  platforms: [
    .iOS(.v10),
  ],
  products: [
    .library(
      name: "cuid",
      targets: ["cuid"]
    ),
  ],
  targets: [
    .target(
      name: "cuid",
      path: "cuid"
  )]
)
