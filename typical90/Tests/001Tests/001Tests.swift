import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 34
1
8 13 26
""", """
13
"""),
(#filePath, #line,
"""
7 45
2
7 11 16 20 28 34 38
""", """
12
"""),
(#filePath, #line,
"""
3 100
1
28 54 81
""", """
46
"""),
(#filePath, #line,
"""
3 100
2
28 54 81
""", """
26
"""),
(#filePath, #line,
"""
20 1000
4
51 69 102 127 233 295 350 388 417 466 469 523 553 587 720 739 801 855 926 954
""", """
170
"""),
]

final class _001Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}