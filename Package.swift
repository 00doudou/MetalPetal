// swift-tools-version:5.9

// requires SE-0271

import PackageDescription

let package = Package(
    name: "MetalPetal",
    platforms: [.macOS(.v10_13), .iOS(.v13), .tvOS(.v13), .visionOS(.v1)],
    products: [
        .library(
            name: "MetalPetal",
            targets: ["MetalPetal"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MetalPetal",
            dependencies: ["MetalPetalObjectiveC"]),
        .target(
            name: "MetalPetalObjectiveC",
            dependencies: []),
        .target(
            name: "MetalPetalTestHelpers",
            dependencies: ["MetalPetal"],
            path: "Tests/MetalPetalTestHelpers"),
        .testTarget(
            name: "MetalPetalTests",
            dependencies: ["MetalPetal", "MetalPetalTestHelpers"]),
    ],
    cxxLanguageStandard: .cxx14
)
