import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                11 2
                """, """
                3
                """),
            (#filePath, #line, """
                0 4
                """, """
                4
                """),
            (#filePath, #line, """
                112 20210213
                """, """
                20210436
                """),
            (#filePath, #line, """
                -211 1000000000000000000
                """, """
                1000000000000000422
                """),
        ]
        try cases.forEach(solve)
    }
}