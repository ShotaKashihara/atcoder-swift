import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6
""", """
2
"""),
(#filePath, #line,
"""
1
""", """
0
"""),
(#filePath, #line,
"""
1000000000000000000
""", """
59
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}