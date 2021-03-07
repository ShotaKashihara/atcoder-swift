import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                """, """
                2.00000000000
                """),
            (#filePath, #line, """
                3
                """, """
                4.50000000000
                """),
            (#filePath, #line, """
                4
                """, """
                7.333333333333333
                """),
            (#filePath, #line, """
                9999
                """, """
                97864.2728544078
                """),
        ]
        try cases.forEach(solve)
    }
}
