// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.1.1"
let package = Package(
    name: "ZohoDeskPortalSalesIQ",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalSalesIQ",
            targets: ["ZohoDeskPortalSalesIQ", "Mobilisten", "ZohoDeskPortalSalesIQPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.1.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalSalesIQ", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalSalesIQ/\(version)/ZohoDeskPortalSalesIQ.zip", checksum: "3a4d0f64d617ab2abb49247973075bfeb6f5c7885cf5373894dd0be664a30779"),
        .binaryTarget(name: "Mobilisten", url: "https://raw.githubusercontent.com/zoho/SalesIQ-Mobilisten-iOS/v9.2.1/Mobilisten.zip", checksum: "a9b9da480a5280d677be38e5a33e6b51549a2afe806f213badf758bcbc597662"),
        .target(
            name: "ZohoDeskPortalSalesIQPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
