// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JLRouterCenter",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "JLRouterCenter",
            targets: ["JLRouterCenter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "JLRouterService", path: "../JLRouterService"),
        .package(url: "https://github.com/ZPP506/ZPPRouter.git", .exact("0.1.1")),
        .package(name: "View2", path: "../Module(组件)/View2"),
        .package(name: "View1", path: "../Module(组件)/View1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "JLRouterCenter",
            dependencies: ["View2",
                           "View1",
                           "ZPPRouter",
            ]),
        .testTarget(
            name: "JLRouterCenterTests",
            dependencies: ["JLRouterCenter"]),
    ]
)
