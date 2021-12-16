import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
227
21 47 56
""", """
5
"""),
(#filePath, #line,
"""
9999
1 5 10
""", """
1004
"""),
(#filePath, #line,
"""
998244353
314159 265358 97932
""", """
3333
"""),
(#filePath, #line,
"""
100000000
10001 10002 10003
""", """
9998
"""),
]

final class _016Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}