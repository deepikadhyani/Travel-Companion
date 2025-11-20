// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "packages",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "TravelDomainWrapper", targets: ["TravelDomainWrapper"]),
        .library(name: "NetworkingWrapper", targets: ["NetworkingWrapper"]),
        .library(name: "UtilitiesWrapper", targets: ["UtilitiesWrapper"])
    ],
    dependencies: [
        .package(path: "./TravelDomain"),
        .package(path: "./Networking"),
        .package(path: "./Utilities")
    ],
    targets: [
        .target(name: "TravelDomainWrapper", dependencies: [
            .product(name: "TravelDomain", package: "TravelDomain")
        ]),
        .target(name: "NetworkingWrapper", dependencies: [
            .product(name: "Networking", package: "Networking")
        ]),
        .target(name: "UtilitiesWrapper", dependencies: [
            .product(name: "Utilities", package: "Utilities")
        ])
    ]
)
