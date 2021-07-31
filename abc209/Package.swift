// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ABC209",
    dependencies: [],
    targets: [
        .target(name: "A", swiftSettings: [.unsafeFlags(["-Ounchecked"])]),
        .testTarget(name: "ATests", dependencies: ["A", "TestLibrary"]),
        .target(name: "B"),
        .testTarget(name: "BTests", dependencies: ["B", "TestLibrary"]),
        .target(name: "C"),
        .testTarget(name: "CTests", dependencies: ["C", "TestLibrary"]),
        .target(name: "D"),
        .testTarget(name: "DTests", dependencies: ["D", "TestLibrary"]),
        .target(name: "E", swiftSettings: [.unsafeFlags(["-Ounchecked"])]),
        .testTarget(name: "ETests", dependencies: ["E", "TestLibrary"]),
        .target(name: "F", swiftSettings: [.unsafeFlags(["-Ounchecked"])]),
        .testTarget(name: "FTests", dependencies: ["F", "TestLibrary"]),
        .target(name: "TestLibrary", path: "Tests/TestLibrary"),
    ]
)
