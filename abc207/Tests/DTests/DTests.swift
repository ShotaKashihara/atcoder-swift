import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
0 0
0 1
1 0
2 0
3 0
3 1
""", """
Yes
"""),
(#filePath, #line,
"""
4
1 6
6 6
1 1
6 1
5 -8
1 -5
4 -1
8 -4
""", """
Yes
"""),
(#filePath, #line,
"""
3
1 1
1 2
2 1
2 0
3 0
3 1
""", """
Yes
"""),
(#filePath, #line,
"""
3
1 0
1 1
3 0
-1 0
-1 1
-3 0
""", """
No
"""),
(#filePath, #line,
"""
4
0 0
2 9
10 -2
-6 -7
0 0
2 9
10 -2
-6 -7
""", """
Yes
"""),
(#filePath, #line,
"""
6
10 5
-9 3
1 -5
-6 -5
6 9
-9 0
-7 -10
-10 -5
5 4
9 0
0 -10
-10 -2
""", """
Yes
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}
