import XCTest
import TestLibrary

final class 020Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 3 2
                """, """
                Yes
                """),
            (#filePath, #line, """
                16 3 2
                """, """
                No
                """),
            (#filePath, #line, """
                8 3 2
                """, """
                No
                """),
        ]
        try cases.forEach(solve)
    }
}