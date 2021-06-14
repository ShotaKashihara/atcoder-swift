import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                1 2
                2 3
                3 2
                """, """
                7
                """),
            (#filePath, #line, """
                3 0
                """, """
                3
                """),
            (#filePath, #line, """
                4 4
                1 2
                2 3
                3 4
                4 1
                """, """
                16
                """),
        ]
        try cases.forEach(solve)
    }
}