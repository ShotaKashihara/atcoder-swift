import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 4
                1 2 3
                2 1 3
                2 2 3
                1 2 3
                2 2 3
                """, """
                0
                1
                2
                """),
            (#filePath, #line, """
                10 10
                0 5 3 4 7 0 0 0 1 0
                1 10 7
                2 8 9
                2 3 6
                2 1 6
                2 1 10
                1 9 4
                1 6 1
                1 6 3
                1 1 7
                2 3 5
                """, """
                1
                0
                5
                3
                0
                """),
        ]
        try cases.forEach(solve)
    }
}