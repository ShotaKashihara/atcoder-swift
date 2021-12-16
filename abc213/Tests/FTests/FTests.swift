import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
abb
""", """
3
3
2
"""),
(#filePath, #line,
"""
11
mississippi
""", """
11
16
14
12
13
11
9
7
4
3
4
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}