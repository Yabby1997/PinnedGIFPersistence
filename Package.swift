// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PinnedGIFPersistence",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PinnedGIFPersistence",
            targets: ["PinnedGIFPersistence"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yabby1997/GIFPediaService", from: "0.4.0"),
        .package(url: "https://github.com/Yabby1997/SHPersistenceServiceInterface", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "PinnedGIFPersistence",
            dependencies: [
                .product(name: "GIFPediaService", package: "GIFPediaService"),
                .product(name: "SHPersistenceServiceInterface", package: "SHPersistenceServiceInterface"),
            ]),
    ]
)
