import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 3
                2 1
                5 10
                """, """
                4
                """),
            (#filePath, #line, """
                5 1000000000
                1 1000000000
                2 1000000000
                3 1000000000
                4 1000000000
                5 1000000000
                """, """
                6000000000
                """),
            (#filePath, #line, """
                3 2
                5 5
                2 1
                2 2
                """, """
                10
                """),
        ]
        try cases.forEach(solve)
    }
}