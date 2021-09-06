// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "View2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "View2",
            targets: ["View2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "JLRouterService", path: "../Router(路由实践)/JLRouterService"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "View2",
            dependencies: ["JLRouterService"]),
        .testTarget(
            name: "View2Tests",
            dependencies: ["View2"]),
    ]
)
