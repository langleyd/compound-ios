// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Compound",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(name: "Compound", targets: ["Compound"])
    ],
    dependencies: [
        .package(url: "https://github.com/langleyd/compound-design-tokens.git", revision: "232f88bf1e41ab72ac65a61779eccd0b70e327cf"),
    ],
    targets: [
        .target(name: "Compound",
                dependencies: [
                    .product(name: "CompoundDesignTokens", package: "compound-design-tokens"),
                ]),
        .testTarget(name: "CompoundTests", dependencies: ["Compound"])
    ]
)
