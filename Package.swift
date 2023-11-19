// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "PizzaOnboarding",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15), 
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "PizzaOnboarding",
            targets: ["PizzaOnboarding"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PizzaKit/pizzakit",
            from: "2.0.0"
        )
    ],
    targets: [
        .target(
            name: "PizzaOnboarding",
            dependencies: [
                .product(name: "PizzaKit", package: "pizzakit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
