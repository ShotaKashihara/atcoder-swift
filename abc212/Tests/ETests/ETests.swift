import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 1 4
2 3
""", """
4
"""),
(#filePath, #line,
"""
3 3 3
1 2
1 3
2 3
""", """
0
"""),
(#filePath, #line,
"""
5 3 100
1 2
4 5
2 3
""", """
428417047
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}