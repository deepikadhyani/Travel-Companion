// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TravelDomain",
    platforms: [.iOS(.v15)],
    products: [.library(name: "TravelDomain", targets: ["TravelDomain"])],
    targets: [
        .target(name: "TravelDomain", path: "Sources/TravelDomain"),
        .testTarget(name: "TravelDomainTests", dependencies: ["TravelDomain"], path: "Tests/TravelDomainTests")
    ]
)
