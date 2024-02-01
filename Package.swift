// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyHTMLBuilder",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SwiftyHTMLBuilder",
            targets: [
                "SwiftyHTMLBuilder"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", .upToNextMajor(from: "1.15.2")),
    ],
    targets: [
        .target(
            name: "SwiftyHTMLBuilder",
            path: "Sources/SwiftyHTMLBuilder"
        ),
        .testTarget(
            name: "SwiftyHTMLBuilderTests",
            dependencies: [
                "SwiftyHTMLBuilder",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        )
    ]
)
