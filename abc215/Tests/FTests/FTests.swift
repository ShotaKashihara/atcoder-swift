import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
0 3
3 1
4 10
""", """
4
"""),
(#filePath, #line,
"""
4
0 1
0 4
0 10
0 6
""", """
0
"""),
(#filePath, #line,
"""
8
897 729
802 969
765 184
992 887
1 104
521 641
220 909
380 378
""", """
801
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}