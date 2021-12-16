import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 5 2
1 2
2 3
3 2
1 4
1 5
1 4 5 2 8
""", """
18
"""),
(#filePath, #line,
"""
3 1 10
2 3
1 100 100
""", """
1
"""),
]

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}