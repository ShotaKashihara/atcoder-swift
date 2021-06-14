import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 3 1
                """, """
                9
                """),
            (#filePath, #line, """
                1 0 0
                """, """
                0
                """),
            (#filePath, #line, """
                1000000 1000000 1000000
                """, """
                192151600
                """),
        ]
        try cases.forEach(solve)
    }
}