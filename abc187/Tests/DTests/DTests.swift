import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                2 1
                2 2
                5 1
                1 3
                """, """
                1
                """),
            (#filePath, #line, """
                5
                2 1
                2 1
                2 1
                2 1
                2 1
                """, """
                3
                """),
            (#filePath, #line, """
                1
                273 691
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}