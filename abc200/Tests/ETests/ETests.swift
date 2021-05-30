import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 5
                """, """
                1 2 2
                """),
            (#filePath, #line, """
                1000000 1000000000000000000
                """, """
                1000000 1000000 1000000
                """),
            (#filePath, #line, """
                9 47
                """, """
                3 1 4
                """),
        ]
        try cases.forEach(solve)
    }
}