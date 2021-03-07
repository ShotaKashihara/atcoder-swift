import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10 8
                """, """
                1
                """),
            (#filePath, #line, """
                1 2
                """, """
                3
                """),
            (#filePath, #line, """
                0 0
                """, """
                4
                """),
        ]
        try cases.forEach(solve)
    }
}