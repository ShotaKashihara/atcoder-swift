import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 2
                1 2 4 5 3
                """, """
                5
                """),
            (#filePath, #line, """
                2 16
                1 2
                """, """
                150994942
                """),
            (#filePath, #line, """
                10 3000
                3 7 10 1 9 5 4 8 6 2
                """, """
                129989699
                """),
        ]
        try cases.forEach(solve)
    }
}