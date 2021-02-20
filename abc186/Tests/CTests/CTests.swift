import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                20
                """, """
                17
                """),
            (#filePath, #line, """
                100000
                """, """
                30555
                """),
        ]
        try cases.forEach(solve)
    }
}