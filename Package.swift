// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.2"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalSalesIQ", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalSalesIQ/\(version)/ZohoDeskPortalSalesIQ.zip", checksum: "1d8f095ce6aec9457fb354ac9a4e7d6266d2df0e5a6b738181346344ed16b6ed"),
        .binaryTarget(name: "Mobilisten", url: "https://github.com/zoho/SalesIQ-Mobilisten-iOS/releases/download/v10.1.2/Mobilisten.zip", checksum: "d8e6a5beb18c7ecabe57bc319b915a43c7479efc42cd5720716f81f968513b1a"),
        .target(
            name: "ZohoDeskPortalSalesIQPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
