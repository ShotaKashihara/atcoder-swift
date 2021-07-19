import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 2
2 3
3 5
""", """
11
"""),
(#filePath, #line,
"""
6 1
3 4
""", """
-1
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}