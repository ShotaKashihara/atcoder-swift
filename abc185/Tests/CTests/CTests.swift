import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                12
                """, """
                1
                """),
            (#filePath, #line, """
                13
                """, """
                12
                """),
            (#filePath, #line, """
                17
                """, """
                4368
                """),
        ]
        try cases.forEach(solve)
    }
}