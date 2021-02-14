import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                10
                1 2 3 4 5 6 7 8 9
                """, """
                10
                """),
            (#filePath, #line, """
                5
                1 2 3 1
                """, """
                2
                """),
            (#filePath, #line, """
                10
                1 1 3 1 3 6 7 6 6
                """, """
                5
                """),
        ]
        try cases.forEach(solve)
    }
}