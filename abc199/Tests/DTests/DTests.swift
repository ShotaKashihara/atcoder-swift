import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                1 2
                2 3
                3 1
                """, """
                6
                """),
            (#filePath, #line, """
                3 0
                """, """
                27
                """),
            (#filePath, #line, """
                4 6
                1 2
                2 3
                3 4
                2 4
                1 3
                1 4
                """, """
                0
                """),
            (#filePath, #line, """
                20 0
                """, """
                3486784401
                """),
        ]
        try cases.forEach(solve)
    }
}