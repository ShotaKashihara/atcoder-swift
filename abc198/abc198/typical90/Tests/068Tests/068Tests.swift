import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4
7
0 1 2 3
1 1 2 1
1 3 4 5
0 3 4 6
1 3 4 5
0 2 3 6
1 3 1 5
""", """
2
Ambiguous
1
2
"""),
(#filePath, #line,
"""
15
25
0 11 12 41
0 1 2 159
0 14 15 121
0 4 5 245
0 12 13 157
0 9 10 176
0 6 7 170
0 2 3 123
0 7 8 167
0 3 4 159
1 12 11 33
0 10 11 116
0 8 9 161
1 9 12 68
1 12 12 33
1 7 12 74
0 5 6 290
1 8 9 93
0 13 14 127
1 10 12 108
1 14 1 3
1 13 8 124
1 12 11 33
1 12 10 33
1 5 15 194
""", """
8
33
33
33
68
33
144
93
8
108
118
"""),
]

final class _068Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}