import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 7
                """, """
                2
                """),
            (#filePath, #line, """
                4 10
                """, """
                12
                """),
            (#filePath, #line, """
                1 1000000
                """, """
                392047955148
                """),
        ]
        try cases.forEach(solve)
    }
}