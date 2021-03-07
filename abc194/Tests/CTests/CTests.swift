import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                2 8 4
                """, """
                56
                """),
            (#filePath, #line, """
                5
                -5 8 9 -4 -3
                """, """
                950
                """),
        ]
        try cases.forEach(solve)
    }
}