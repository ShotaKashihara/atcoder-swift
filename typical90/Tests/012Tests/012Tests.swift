import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3
10
1 2 2
1 1 1
2 1 1 2 2
1 3 2
2 1 1 2 2
2 2 2 3 2
1 2 3
1 2 1
2 1 1 2 2
2 1 1 3 3
""", """
No
No
Yes
Yes
No
"""),
(#filePath, #line,
"""
1 1
3
2 1 1 1 1
1 1 1
2 1 1 1 1
""", """
No
Yes
"""),
(#filePath, #line,
"""
5 5
42
2 3 4 3 4
2 3 2 3 2
1 4 1
2 4 1 2 2
1 1 2
1 4 5
1 3 3
2 4 2 1 3
1 3 5
2 2 4 2 3
2 2 4 2 5
2 3 4 5 1
2 3 1 2 2
2 3 1 1 2
2 2 4 5 2
2 3 2 5 3
1 4 3
2 3 3 3 5
2 3 1 3 2
1 1 5
2 4 4 5 3
1 1 4
2 1 3 2 5
2 4 3 1 4
2 2 3 3 3
1 2 1
1 2 5
2 1 4 5 3
2 4 4 2 5
2 4 2 2 4
1 2 2
2 4 1 5 2
1 2 4
2 3 1 4 1
1 4 4
2 3 2 2 1
2 1 1 5 2
1 4 2
2 4 2 3 5
1 3 2
1 3 4
1 2 3
""", """
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
No
Yes
"""),
]

final class _012Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}