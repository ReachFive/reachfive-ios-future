// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reach5Future",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "Reach5Future", targets: ["Reach5Future"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReachFive/reachfive-ios", .upToNextMajor(from: "8.2.0")),
        .package(url: "https://github.com/Thomvis/BrightFutures.git", .upToNextMajor(from: "8.2.0")),
    ],
    targets: [
        .target(
            name: "Reach5Future",
            dependencies: [
                .product(name: "Reach5", package: "Reach5"),
                .product(name: "BrightFutures", package: "BrightFutures"),
           ],
            resources: [.copy("Core/PrivacyInfo.xcprivacy")]
        )
    ]
)
