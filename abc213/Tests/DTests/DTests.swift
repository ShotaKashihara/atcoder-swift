import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
1 2
4 2
3 1
""", """
1 2 4 2 1 3 1
"""),
(#filePath, #line,
"""
5
1 2
1 3
1 4
1 5
""", """
1 2 1 3 1 4 1 5 1
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}