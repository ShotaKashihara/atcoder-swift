import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 2
                1 3
                """, """
                3
                """),
            (#filePath, #line, """
                13 3
                13 3 9
                """, """
                6
                """),
            (#filePath, #line, """
                5 5
                5 2 1 4 3
                """, """
                0
                """),
            (#filePath, #line, """
                1 0
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}