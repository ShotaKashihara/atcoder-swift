import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1 2
1 2
""", """
0.250000000000
"""),
(#filePath, #line,
"""
3
3 3
1 1
4 4
""", """
1.000000000000
"""),
(#filePath, #line,
"""
10
1 10
38 40
8 87
2 9
75 100
45 50
89 92
27 77
23 88
62 81
""", """
13.696758921226
"""),
]

final class _066Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}