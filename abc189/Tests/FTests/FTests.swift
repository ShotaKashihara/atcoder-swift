import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2 2 0\n\n", "1.5000\n"),
            (#filePath, #line, "2 2 1\n1\n", "2.0000\n"),
            (#filePath, #line, "100 6 10\n11 12 13 14 15 16 17 18 19 20\n", "-1\n"),
            (#filePath, #line, "100000 2 2\n2997 92458\n", "201932.2222\n"),
        ]
        try cases.forEach(solve)
    }
}