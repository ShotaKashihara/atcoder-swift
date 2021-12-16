import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1 2 3 5 7 11
4 6 8 9 10 12
""", """
1421
"""),
(#filePath, #line,
"""
1
11 13 17 19 23 29
""", """
112
"""),
(#filePath, #line,
"""
7
19 23 51 59 91 99
15 45 56 65 69 94
7 11 16 34 59 95
27 30 40 43 83 85
19 23 25 27 45 99
27 48 52 53 60 81
21 36 49 72 82 84
""", """
670838273
"""),
]

final class _052Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}