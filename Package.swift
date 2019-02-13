// swift-tools-version:4.2
import PackageDescription

let pkg = Package(
    name: "Version",
    products: [
        .library(name: "Version", targets: ["Version"]),
    ],
    targets: [
        .target(name: "Version", path: "Sources"),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)

#if !os(Linux)
pkg.targets.append(.testTarget(name: "Tests", dependencies: ["Version"], path: "Tests"))
#endif
