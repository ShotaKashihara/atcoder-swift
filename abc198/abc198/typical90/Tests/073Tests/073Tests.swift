import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
7
b a b a b b a
2 1
3 7
3 2
3 4
5 4
4 6
""", """
4
"""),
(#filePath, #line,
"""
2
a b
1 2
""", """
1
"""),
(#filePath, #line,
"""
22
b a b b a b b b a b a a a a b b a b b a a a
1 7
4 14
12 22
2 4
21 17
3 20
7 8
20 14
15 11
8 14
9 12
17 8
6 20
11 20
18 19
10 8
22 20
13 21
5 14
19 20
16 14
""", """
16
"""),
]

final class _073Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}