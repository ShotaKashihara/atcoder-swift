import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 4
                """, """
                2
                """),
            (#filePath, #line, """
                199999 200000
                """, """
                1
                """),
            (#filePath, #line, """
                101 139
                """, """
                34
                """),
        ]
        try cases.forEach(solve)
    }
}