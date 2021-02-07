import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2\nAND\nOR\n", "5\n"),
            (#filePath, #line, "5\nOR\nOR\nOR\nOR\nOR\n", "63\n"),
        ]
        try cases.forEach(solve)
    }
}