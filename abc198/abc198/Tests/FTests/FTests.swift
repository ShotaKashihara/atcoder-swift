import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
8
""", """
3
"""),
(#filePath, #line,
"""
9
""", """
5
"""),
(#filePath, #line,
"""
50
""", """
80132
"""),
(#filePath, #line,
"""
10000000000
""", """
2239716
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}