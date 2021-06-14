import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 1
                1 2 2 3
                """, """
                4
                """),
            (#filePath, #line, """
                2 3
                1 2 2 3
                1 2 2 1
                1 1 1 1
                """, """
                3
                """),
            (#filePath, #line, """
                4 2
                1 2 3 4
                3 4 5 6
                """, """
                -1
                """),
            (#filePath, #line, """
                6 9
                1 1 0 0
                1 3 1 2
                1 5 2 3
                5 2 16 5
                2 6 1 10
                3 4 3 4
                3 5 3 10
                5 6 1 100
                4 2 0 110
                """, """
                20
                """),
        ]
        try cases.forEach(solve)
    }
}