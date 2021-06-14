import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 5 2
                """, """
                5
                """),
            (#filePath, #line, """
                4 5 6
                """, """
                0
                """),
            (#filePath, #line, """
                1 1 1
                """, """
                1
                """),
        ]
        try cases.forEach(solve)
    }
}