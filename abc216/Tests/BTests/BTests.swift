import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3
tanaka taro
sato hanako
tanaka taro
""", """
Yes
"""),
(#filePath, #line,
"""
3
saito ichiro
saito jiro
saito saburo
""", """
No
"""),
(#filePath, #line,
"""
4
sypdgidop bkseq
bajsqz hh
ozjekw mcybmtt
qfeysvw dbo
""", """
No
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}