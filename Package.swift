// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RTRootNavigationController",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RTRootNavigationController",
            targets: ["RTRootNavigationController"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RTRootNavigationController",
            dependencies: [],
            // 源文件路径，默认Sources/TargetName
            path: "Sources/RTRootNavigationController",
            // 默认path/include c家族库的公共头文件地址。
            publicHeadersPath: ".",
            // c家族语言设置
            cSettings: [
                // objc代码指定头文件搜索路径
                .headerSearchPath("Sources/RTRootNavigationController/RTRootNavigationController.h"),
            ],
            cxxSettings: nil,
            swiftSettings: nil,
            linkerSettings: nil
        ),
        .testTarget(
            name: "RTRootNavigationControllerTests",
            dependencies: ["RTRootNavigationController"]),
    ]
)
