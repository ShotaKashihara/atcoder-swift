import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                1 2 2
                3 1 2
                2 3 2
                """, """
                4
                """),
            (#filePath, #line, """
                4
                1 1 1 1
                1 1 1 1
                1 2 3 4
                """, """
                16
                """),
            (#filePath, #line, """
                3
                2 3 3
                1 3 3
                1 1 1
                """, """
                0
                """),
            (#filePath, #line, """
                5
                4 2 2 3 5
                2 5 3 2 5
                3 2 4 1 4
                """, """
                8
                """),
        ]
        try cases.forEach(solve)
    }
}
