import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 2
1 2 3 50
2 3 4 45
""", """
13
"""),
(#filePath, #line,
"""
8 2
2 3 6 1152886174205865983
1 2 8 1116611213275394047
""", """
395781543
"""),
]

final class _086Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}