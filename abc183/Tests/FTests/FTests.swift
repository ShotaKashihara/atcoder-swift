import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 5
                1 2 3 2 1
                1 1 2
                1 2 5
                2 1 1
                1 3 4
                2 3 4
                """, """
                2
                0
                """),
            (#filePath, #line, """
                5 4
                2 2 2 2 2
                1 1 2
                1 1 3
                1 2 3
                2 2 2
                """, """
                3
                """),
            (#filePath, #line, """
                12 9
                1 2 3 1 2 3 1 2 3 1 2 3
                1 1 2
                1 3 4
                1 5 6
                1 7 8
                2 2 1
                1 9 10
                2 5 6
                1 4 8
                2 6 1
                """, """
                1
                0
                0
                """),
        ]
        try cases.forEach(solve)
    }
}