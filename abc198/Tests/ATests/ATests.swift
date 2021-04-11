import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                """, """
                1
                """),
            (#filePath, #line, """
                1
                """, """
                0
                """),
            (#filePath, #line, """
                3
                """, """
                2
                """),
        ]
        try cases.forEach(solve)
    }
}