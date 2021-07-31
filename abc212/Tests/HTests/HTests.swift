import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 2
1 2
""", """
4
"""),
(#filePath, #line,
"""
100 3
3 5 7
""", """
112184936
"""),
]

final class HTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}