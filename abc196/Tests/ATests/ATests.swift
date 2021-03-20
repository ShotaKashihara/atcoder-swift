import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                0 10
                0 10
                """, """
                10
                """),
            (#filePath, #line, """
                -100 -100
                100 100
                """, """
                -200
                """),
            (#filePath, #line, """
                -100 100
                -100 100
                """, """
                200
                """),
        ]
        try cases.forEach(solve)
    }
}