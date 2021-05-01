import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 1
                3
                """, """
                1 0
                1 3
                0 2
                """),
            (#filePath, #line, """
                8 0
                """, """
                1 0
                1 3
                1 5
                6 7
                6 4
                6 2
                3 2
                """),
            (#filePath, #line, """
                8 7
                1 2 3 4 5 6 7
                """, """
                -1
                """),
        ]
        try cases.forEach(solve)
    }
}