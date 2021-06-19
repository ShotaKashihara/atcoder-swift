import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                12
                """, """
                5
                """),
            (#filePath, #line, """
                100128
                """, """
                447
                """),
        ]
        try cases.forEach(solve)
    }
}