import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                0 1
                """, """
                2
                """),
            (#filePath, #line, """
                0 0
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}