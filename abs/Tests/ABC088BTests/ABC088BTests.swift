import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
3 1
""", """
2
"""),
(#filePath, #line,
"""
3
2 7 4
""", """
5
"""),
(#filePath, #line,
"""
4
20 18 2 18
""", """
18
"""),
]

final class ABC088BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}