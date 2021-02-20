import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 3 2
                2 2
                3 3
                """, """
                10
                """),
            (#filePath, #line, """
                5 4 4
                3 2
                3 4
                4 2
                5 2
                """, """
                14
                """),
            (#filePath, #line, """
                200000 200000 0
                """, """
                40000000000
                """),
        ]
        try cases.forEach(solve)
    }
}