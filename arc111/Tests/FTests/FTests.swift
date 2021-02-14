import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 4.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 2 2
                """, """
                1
                """),
            (#filePath, #line, """
                3 1 4
                """, """
                0
                """),
            (#filePath, #line, """
                111 112 113
                """, """
                451848306
                """),
        ]
        try cases.forEach(solve)
    }
}