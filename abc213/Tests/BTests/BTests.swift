import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
1 123 12345 12 1234 123456
""", """
3
"""),
(#filePath, #line,
"""
5
3 1 4 15 9
""", """
5
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}