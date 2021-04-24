import XCTest
import TestLibrary

final class 005Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 5.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 7 3
                1 4 9
                """, """
                3
                """),
            (#filePath, #line, """
                5 2 3
                1 4 9
                """, """
                81
                """),
            (#filePath, #line, """
                10000 27 7
                1 3 4 6 7 8 9
                """, """
                989112238
                """),
            (#filePath, #line, """
                1000000000000000000 29 6
                1 2 4 5 7 9
                """, """
                853993813
                """),
            (#filePath, #line, """
                1000000000000000000 957 7
                1 2 3 5 6 7 9
                """, """
                205384995
                """),
        ]
        try cases.forEach(solve)
    }
}