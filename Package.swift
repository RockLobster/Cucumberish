// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Cucumberish",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
    .library(name: "Cucumberish", targets: ["Cucumberish"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Cucumberish",
            path: "Cucumberish",
            cSettings: [
                .headerSearchPath("Core"),
                .headerSearchPath("Core/Managers"),
                .headerSearchPath("Core/Models"),
                .headerSearchPath("Dependencies/Gherkin"),
                .headerSearchPath("Utils")
            ]
        ),
        .testTarget(name: "SPMImportTest",
                    dependencies: ["Cucumberish"],
                    path: "CucumberishLibraryTest/SPMImportTest")
    ]
)
