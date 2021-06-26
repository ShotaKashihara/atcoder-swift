import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 2 3 2
""", """
2
"""),
(#filePath, #line,
"""
6 9 2 3
""", """
-1
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}