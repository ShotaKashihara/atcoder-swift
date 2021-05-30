// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "KUJIKATSU329",
    dependencies: [],
    targets: [
        .target(name: "1"),
        .testTarget(name: "1Tests", dependencies: ["1", "TestLibrary"]),
        .target(name: "2"),
        .testTarget(name: "2Tests", dependencies: ["2", "TestLibrary"]),
        .target(name: "3"),
        .testTarget(name: "3Tests", dependencies: ["3", "TestLibrary"]),
        .target(name: "4"),
        .testTarget(name: "4Tests", dependencies: ["4", "TestLibrary"]),
        .target(name: "5"),
        .testTarget(name: "5Tests", dependencies: ["5", "TestLibrary"]),
        .target(name: "6"),
        .testTarget(name: "6Tests", dependencies: ["6", "TestLibrary"]),
        .target(name: "TestLibrary", path: "Tests/TestLibrary"),
    ]
)