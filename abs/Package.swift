// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ABS",
    dependencies: [],
    targets: [
        .target(name: "ABC049C"),
        .testTarget(name: "ABC049CTests", dependencies: ["ABC049C", "TestLibrary"]),
        .target(name: "ABC081A"),
        .testTarget(name: "ABC081ATests", dependencies: ["ABC081A", "TestLibrary"]),
        .target(name: "ABC081B"),
        .testTarget(name: "ABC081BTests", dependencies: ["ABC081B", "TestLibrary"]),
        .target(name: "ABC083B"),
        .testTarget(name: "ABC083BTests", dependencies: ["ABC083B", "TestLibrary"]),
        .target(name: "ABC085B"),
        .testTarget(name: "ABC085BTests", dependencies: ["ABC085B", "TestLibrary"]),
        .target(name: "ABC085C"),
        .testTarget(name: "ABC085CTests", dependencies: ["ABC085C", "TestLibrary"]),
        .target(name: "ABC086A"),
        .testTarget(name: "ABC086ATests", dependencies: ["ABC086A", "TestLibrary"]),
        .target(name: "ABC086C"),
        .testTarget(name: "ABC086CTests", dependencies: ["ABC086C", "TestLibrary"]),
        .target(name: "ABC087B"),
        .testTarget(name: "ABC087BTests", dependencies: ["ABC087B", "TestLibrary"]),
        .target(name: "ABC088B"),
        .testTarget(name: "ABC088BTests", dependencies: ["ABC088B", "TestLibrary"]),
        .target(name: "PracticeA"),
        .testTarget(name: "PracticeATests", dependencies: ["PracticeA", "TestLibrary"]),
        .target(name: "TestLibrary", path: "Tests/TestLibrary"),
    ]
)