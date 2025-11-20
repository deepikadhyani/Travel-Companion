// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Networking",
    platforms: [.iOS(.v15)],
    products: [.library(name: "Networking", targets: ["Networking"])],
    dependencies: [
        .package(path: "../TravelDomain")
    ],
    targets: [
        .target(name: "Networking", dependencies: [
            .product(name: "TravelDomain", package: "TravelDomain")
        ], path: "Sources/Networking"),
        .testTarget(name: "NetworkingTests", dependencies: ["Networking"], path: "Tests/NetworkingTests")
    ]
)
