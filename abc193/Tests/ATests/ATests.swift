import XCTest
import TestLibrary

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                100 80
                """, """
                20.0
                """),
            (#filePath, #line, """
                7 6
                """, """
                14.285714285714285714
                """),
            (#filePath, #line, """
                99999 99998
                """, """
                0.00100001000010000100
                """),
        ]
        try cases.forEach(solve)
    }
}