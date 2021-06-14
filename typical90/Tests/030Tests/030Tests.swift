import XCTest
import TestLibrary

final class _030Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                15 2
                """, """
                5
                """),
            (#filePath, #line, """
                30 2
                """, """
                13
                """),
            (#filePath, #line, """
                200 4
                """, """
                0
                """),
            (#filePath, #line, """
                869120 1
                """, """
                869119
                """),
            (#filePath, #line, """
                10000000 3
                """, """
                6798027
                """),
        ]
        try cases.forEach(solve)
    }
}