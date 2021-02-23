import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 3
                1 2 1 3
                1 3 1
                """, """
                2
                """),
            (#filePath, #line, """
                4 6
                1 3 2 4
                1 5 2 6 4 3
                """, """
                3
                """),
            (#filePath, #line, """
                5 5
                1 1 1 1 1
                2 2 2 2 2
                """, """
                5
                """),
        ]
        try cases.forEach(solve)
    }
}