// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Arounds",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/vapor/fluent-provider.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/gtchance/FirebaseSwift.git", .upToNextMajor(from: "1.6.0")),

    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor", "FluentProvider", "FirebaseSwift"],
            exclude: ["Config", "Public", "Resources"]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
