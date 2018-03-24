// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Radar",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "2.2.0")
    ],
    targets: [
        .target(
            name: "Radar",
            dependencies: ["Vapor"])
    ]
)