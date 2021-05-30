import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                6
                123 223 123 523 200 2000
                """, """
                4
                """),
            (#filePath, #line, """
                5
                1 2 3 4 5
                """, """
                0
                """),
            (#filePath, #line, """
                8
                199 100 200 400 300 500 600 200
                """, """
                9
                """),
        ]
        try cases.forEach(solve)
    }
}