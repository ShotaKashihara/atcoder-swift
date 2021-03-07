import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1
                """, """
                1
                """),
            (#filePath, #line, """
                0
                """, """
                0
                """),
            (#filePath, #line, """
                -1
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}