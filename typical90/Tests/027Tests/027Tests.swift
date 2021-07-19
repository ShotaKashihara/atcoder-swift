import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5
e869120
atcoder
e869120
square1001
square1001
""", """
1
2
4
"""),
(#filePath, #line,
"""
4
taro
hanako
yuka
takashi
""", """
1
2
3
4
"""),
(#filePath, #line,
"""
10
square869120
square869120
square869120
square869120
square869120
square869120
square869120
square869120
square869120
square869120
""", """
1
"""),
]

final class _027Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 1.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}