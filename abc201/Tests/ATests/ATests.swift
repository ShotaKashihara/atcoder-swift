import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 1 3
                """, """
                Yes
                """),
            (#filePath, #line, """
                1 4 3
                """, """
                No
                """),
            (#filePath, #line, """
                5 5 5
                """, """
                Yes
                """),
        ]
        try cases.forEach(solve)
    }
}