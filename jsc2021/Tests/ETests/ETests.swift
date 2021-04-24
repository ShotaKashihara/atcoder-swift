import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                aabaaaabaa
                """, """
                0
                """),
            (#filePath, #line, """
                2
                aabaaaabaa
                """, """
                4
                """),
            (#filePath, #line, """
                3
                aabaaaabaa
                """, """
                impossible
                """),
            (#filePath, #line, """
                5
                aabaaaabaa
                """, """
                impossible
                """),
            (#filePath, #line, """
                2
                acaabcbababaaac
                """, """
                6
                """),
        ]
        try cases.forEach(solve)
    }
}