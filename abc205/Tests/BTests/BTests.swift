import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5
                3 1 2 4 5
                """, """
                Yes
                """),
            (#filePath, #line, """
                6
                3 1 4 1 5 2
                """, """
                No
                """),
            (#filePath, #line, """
                3
                1 2 3
                """, """
                Yes
                """),
            (#filePath, #line, """
                1
                1
                """, """
                Yes
                """),
        ]
        try cases.forEach(solve)
    }
}