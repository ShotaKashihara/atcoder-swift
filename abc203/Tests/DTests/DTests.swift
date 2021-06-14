import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2
                1 7 0
                5 8 11
                10 4 2
                """, """
                4
                """),
            (#filePath, #line, """
                3 3
                1 2 3
                4 5 6
                7 8 9
                """, """
                5
                """),
        ]
        try cases.forEach(solve)
    }
}