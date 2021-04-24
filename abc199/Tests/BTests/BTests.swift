import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                3 2
                7 5
                """, """
                3
                """),
            (#filePath, #line, """
                3
                1 5 3
                10 7 3
                """, """
                0
                """),
            (#filePath, #line, """
                3
                3 2 5
                6 9 8
                """, """
                2
                """),
        ]
        try cases.forEach(solve)
    }
}