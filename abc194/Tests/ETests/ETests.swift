import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2
                0 0 1
                """, """
                1
                """),
            (#filePath, #line, """
                3 2
                1 1 1
                """, """
                0
                """),
            (#filePath, #line, """
                3 2
                0 1 0
                """, """
                2
                """),
            (#filePath, #line, """
                7 3
                0 0 1 2 0 1 0
                """, """
                2
                """),
            (#filePath, #line, """
                5 5
                0 1 2 3 4 5
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}
