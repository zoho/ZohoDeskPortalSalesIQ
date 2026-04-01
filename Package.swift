// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.0")
let package = Package(
    name: "ZohoDeskPortalSalesIQ",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalSalesIQ",
            targets: ["ZohoDeskPortalSalesIQ", "ZohoDeskPortalSalesIQPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version),
        .package(url: "https://github.com/zoho/SalesIQ-Mobilisten-iOS-SP.git", exact: "10.1.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalSalesIQ", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalSalesIQ/\(version.description)/ZohoDeskPortalSalesIQ.zip", checksum: "992bc98e29dbaa270b79be9ca87692583ed1620998f2ef69a74a88957b38f584"),
        .target(
            name: "ZohoDeskPortalSalesIQPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration"),
                .product(name: "Mobilisten", package: "SalesIQ-Mobilisten-iOS-SP")
            ]
        )
    ]
)
