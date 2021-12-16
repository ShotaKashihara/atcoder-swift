import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
6 3
1 4 3
2 2 1
4 6 2
""", """
0 1 1 1 0 1 
"""),
(#filePath, #line,
"""
8 2
2 6 1
3 5 3
""", """
0 0 1 1 1 0 0 0 
"""),
]

final class GTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}