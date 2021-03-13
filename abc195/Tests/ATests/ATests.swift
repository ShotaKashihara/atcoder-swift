import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10 120
                """, """
                Yes
                """),
            (#filePath, #line, """
                10 125
                """, """
                No
                """),
        ]
        try cases.forEach(solve)
    }
}