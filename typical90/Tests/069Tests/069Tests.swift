import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 3
""", """
6
"""),
(#filePath, #line,
"""
10 2
""", """
0
"""),
(#filePath, #line,
"""
2021 617
""", """
53731843
"""),
]

final class _069Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}