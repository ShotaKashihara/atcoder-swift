import XCTest
import TestLibrary

final class _039Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                1 2
                """, """
                1
                """),
            (#filePath, #line, """
                4
                1 2
                1 3
                1 4
                """, """
                9
                """),
            (#filePath, #line, """
                12
                1 2
                3 1
                4 2
                2 5
                3 6
                3 7
                8 4
                4 9
                10 5
                11 7
                7 12
                """, """
                211
                """),
        ]
        try cases.forEach(solve)
    }
}