import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 1
1 2 3 4 5
""", """
1
"""),
(#filePath, #line,
"""
5 4
1 1 2 4 2
""", """
5
"""),
(#filePath, #line,
"""
10 2
1 2 3 4 4 3 2 1 2 3
""", """
4
"""),
]

final class _034Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}