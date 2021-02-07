import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 15
                200 5
                350 3
                """, """
                2
                """),
            (#filePath, #line, """
                2 10
                200 5
                350 3
                """, """
                2
                """),
            (#filePath, #line, """
                3 1000000
                1000 100
                1000 100
                1000 100
                """, """
                -1
                """),
        ]
        try cases.forEach(solve)
    }
}