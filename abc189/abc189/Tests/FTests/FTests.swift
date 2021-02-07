import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2 0
                """, """
                1.5000
                """),
            (#filePath, #line, """
                2 2 1
                1
                """, """
                2.0000
                """),
            (#filePath, #line, """
                100 6 10
                11 12 13 14 15 16 17 18 19 20
                """, """
                -1
                """),
            (#filePath, #line, """
                100000 2 2
                2997 92458
                """, """
                201932.2222
                """),
        ]
        try cases.forEach(solve)
    }
}