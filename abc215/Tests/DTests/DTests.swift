import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 12
6 1 5
""", """
3
1
7
11
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}