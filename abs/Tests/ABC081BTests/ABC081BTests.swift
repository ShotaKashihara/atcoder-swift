import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
8 12 40
""", """
2
"""),
(#filePath, #line,
"""
4
5 6 8 10
""", """
0
"""),
(#filePath, #line,
"""
6
382253568 723152896 37802240 379425024 404894720 471526144
""", """
8
"""),
]

final class ABC081BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}