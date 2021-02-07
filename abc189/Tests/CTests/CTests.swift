import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1.5

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "6\n2 4 4 9 4 9\n", "20\n"),
            (#filePath, #line, "6\n200 4 4 9 4 9\n", "200\n"),
        ]
        try cases.forEach(solve)
    }
}