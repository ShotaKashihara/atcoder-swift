import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2 1 3
                1 2 2 3
                2 3 3 4
                """, """
                7
                """),
            (#filePath, #line, """
                3 2 3 1
                1 2 2 3
                2 3 3 4
                """, """
                5
                """),
            (#filePath, #line, """
                3 0 3 1
                """, """
                -1
                """),
            (#filePath, #line, """
                9 14 6 7
                3 1 4 1
                5 9 2 6
                5 3 5 8
                9 7 9 3
                2 3 8 4
                6 2 6 4
                3 8 3 2
                7 9 5 2
                8 4 1 9
                7 1 6 9
                3 9 9 3
                7 5 1 5
                8 2 9 7
                4 9 4 4
                """, """
                26
                """),
        ]
        try cases.forEach(solve)
    }
}