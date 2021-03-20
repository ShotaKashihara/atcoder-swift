import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2 1 2
                """, """
                4
                """),
            (#filePath, #line, """
                3 3 4 1
                """, """
                18
                """),
            (#filePath, #line, """
                4 4 8 0
                """, """
                36
                """),
        ]
        try cases.forEach(solve)
    }
}