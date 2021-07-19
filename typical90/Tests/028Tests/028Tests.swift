import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1 1 3 2
2 1 4 2
""", """
2
1
"""),
(#filePath, #line,
"""
2
1 1 3 4
3 4 6 5
""", """
9
0
"""),
(#filePath, #line,
"""
20
61 98 76 100
70 99 95 100
10 64 96 91
12 37 99 66
63 93 65 95
16 18 18 67
30 47 88 56
33 6 38 8
37 19 40 68
4 56 12 84
3 16 92 78
39 24 67 96
46 1 69 57
40 34 65 65
20 38 51 92
5 32 100 73
7 33 92 55
4 46 97 85
43 18 57 87
15 29 54 74
""", """
1806
990
1013
1221
567
839
413
305
228
121
58
40
0
0
0
0
0
0
0
0
"""),
]

final class _028Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}