// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.2"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.0.2"),
        .package(url: "https://github.com/zoho/SalesIQ-Mobilisten-iOS-SP.git", exact: "8.1.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalSalesIQ", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalSalesIQ/\(version)/ZohoDeskPortalSalesIQ.zip", checksum: "55a77e291b3a004a156d175ea073dd3acd8b479ac85d799b44174af12396ca31"),
        
        .target(
            name: "ZohoDeskPortalSalesIQPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration"),
                .product(name: "Mobilisten", package: "SalesIQ-Mobilisten-iOS-SP")
            ]
        )
    ]
)
