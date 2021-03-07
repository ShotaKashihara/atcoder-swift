import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 2
                3 4
                """, """
                -2
                """),
            (#filePath, #line, """
                0 -1
                1 0
                """, """
                1
                """),
            (#filePath, #line, """
                100 100
                100 100
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}