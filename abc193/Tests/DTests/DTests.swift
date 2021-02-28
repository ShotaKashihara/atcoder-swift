import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                1144#
                2233#
                """, """
                0.4444444444444444
                """),
            (#filePath, #line, """
                2
                9988#
                1122#
                """, """
                1.0
                """),
            (#filePath, #line, """
                6
                1122#
                2228#
                """, """
                0.001932367149758454
                """),
            (#filePath, #line, """
                100000
                3226#
                3597#
                """, """
                0.6296297942426154
                """),
        ]
        try cases.forEach(solve)
    }
}