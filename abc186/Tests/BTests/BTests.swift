import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 3
                2 2 3
                3 2 2
                """, """
                2
                """),
            (#filePath, #line, """
                3 3
                99 99 99
                99 0 99
                99 99 99
                """, """
                792
                """),
            (#filePath, #line, """
                3 2
                4 4
                4 4
                4 4
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}