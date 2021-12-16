import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
4 1 5
3 10 100
""", """
3
7
8
"""),
(#filePath, #line,
"""
4
100 100 100 100
1 1 1 1
""", """
1
1
1
1
"""),
(#filePath, #line,
"""
4
1 2 3 4
1 2 4 7
""", """
1
2
4
7
"""),
(#filePath, #line,
"""
8
84 87 78 16 94 36 87 93
50 22 63 28 91 60 64 27
""", """
50
22
63
28
44
60
64
27
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}