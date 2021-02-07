import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "5 5\n3 5 6 5 4\n", "3 6 4\n"),
            (#filePath, #line, "3 3\n3 3 3\n", "\n"),
        ]
        try cases.forEach(solve)
    }
}
