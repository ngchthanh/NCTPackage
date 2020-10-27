// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NCTPackage",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NCTPackage",
            targets: ["NCTPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.0.0-rc.1")),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.8.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        .package(url: "https://github.com/malcommac/SwiftDate.git", from: "6.2.0"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.15.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NCTPackage",
            dependencies: ["RxSwift", "PromiseKit", "Alamofire", "Kingfisher", "SwiftDate"]),
        .testTarget(
            name: "NCTPackageTests",
            dependencies: ["NCTPackage"]),
    ],
    swiftLanguageVersions: [.v5]
)
