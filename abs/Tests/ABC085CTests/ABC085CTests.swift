import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
9 45000
""", """
4 0 5
"""),
(#filePath, #line,
"""
20 196000
""", """
-1 -1 -1
"""),
(#filePath, #line,
"""
1000 1234000
""", """
14 27 959
"""),
(#filePath, #line,
"""
2000 20000000
""", """
2000 0 0
"""),
]

final class ABC085CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}