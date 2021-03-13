import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                100 200 2
                """, """
                10 20
                """),
            (#filePath, #line, """
                120 150 2
                """, """
                14 16
                """),
            (#filePath, #line, """
                300 333 1
                """, """
                UNSATISFIABLE
                """),
        ]
        try cases.forEach(solve)
    }
}