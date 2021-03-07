import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 330
                0 1 10 100
                1 0 20 200
                10 20 0 300
                100 200 300 0
                """, """
                2
                """),
            (#filePath, #line, """
                5 5
                0 1 1 1 1
                1 0 1 1 1
                1 1 0 1 1
                1 1 1 0 1
                1 1 1 1 0
                """, """
                24
                """),
        ]
        try cases.forEach(solve)
    }
}