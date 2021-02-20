import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 9999999999
                3 6 8
                """, """
                4999999994
                """),
            (#filePath, #line, """
                1 1000000000000000000
                1
                """, """
                999999999999999999
                """),
        ]
        try cases.forEach(solve)
    }
}