import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2 4
                """, """
                Yes
                """),
            (#filePath, #line, """
                10 10 10
                """, """
                No
                """),
            (#filePath, #line, """
                3 4 5
                """, """
                No
                """),
        ]
        try cases.forEach(solve)
    }
}