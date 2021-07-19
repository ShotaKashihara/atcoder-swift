import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
aba
""", """
2
"""),
(#filePath, #line,
"""
10
aaaaaaaaaa
""", """
0
"""),
(#filePath, #line,
"""
5
baaca
""", """
17
"""),
]

final class _074Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}