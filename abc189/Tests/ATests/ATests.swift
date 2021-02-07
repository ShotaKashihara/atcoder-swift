import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "SSS\n", "Won\n"),
            (#filePath, #line, "WVW\n", "Lost\n"),
        ]
        try cases.forEach(solve)
    }
}