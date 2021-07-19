import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
2 5
10 9
4 8
""", """
Yes
"""),
(#filePath, #line,
"""
2
10 100
1000 10000
""", """
No
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}