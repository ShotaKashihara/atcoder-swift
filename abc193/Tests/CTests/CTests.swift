import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                8
                """, """
                6
                """),
            (#filePath, #line, """
                100000
                """, """
                99634
                """),
        ]
        try cases.forEach(solve)
    }
}