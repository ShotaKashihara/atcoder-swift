import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2
                1 2
                1 3
                """, """
                2
                """),
            (#filePath, #line, """
                4 6
                1 2
                1 3
                1 4
                2 3
                2 4
                3 4
                """, """
                1
                """),
            (#filePath, #line, """
                10 11
                9 10
                2 10
                8 9
                3 4
                5 8
                1 8
                5 6
                2 5
                3 6
                6 9
                1 9
                """, """
                5
                """),
            (#filePath, #line, """
                18 0
                """, """
                18
                """),
        ]
        try cases.forEach(solve)
    }
}