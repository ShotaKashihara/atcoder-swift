import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
abcd
bcda
ada
""", """
Aoki
Takahashi
Draw
"""),
(#filePath, #line,
"""
1
ABC
""", """
Draw
"""),
(#filePath, #line,
"""
5
eaaaabaa
eaaaacaa
daaaaaaa
eaaaadaa
daaaafaa
""", """
Takahashi
Takahashi
Takahashi
Aoki
Takahashi
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}