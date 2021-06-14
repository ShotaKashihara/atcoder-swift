import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5
                8 3 7 2 5
                """, """
                13
                """),
            (#filePath, #line, """
                2
                1000 1
                """, """
                1000
                """),
            (#filePath, #line, """
                9
                3 14 15 9 26 5 35 89 79
                """, """
                138
                """),
            (#filePath, #line, """
                5
                2 2 2 3 3
                """, """
                6
                """),
            (#filePath, #line, """
                1
                1
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}
