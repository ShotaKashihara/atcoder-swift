import XCTest
import TestLibrary

final class _051Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5 2 10
                3 8 7 5 11
                """, """
                2
                """),
            (#filePath, #line, """
                5 1 10
                7 7 7 7 7
                """, """
                5
                """),
            (#filePath, #line, """
                40 20 100
                1 3 1 3 4 1 3 5 5 3 3 4 1 5 4 4 3 1 3 4 1 3 2 4 4 1 5 2 5 3 1 3 3 3 5 5 5 2 3 5
                """, """
                137846528820
                """),
        ]
        try cases.forEach(solve)
    }
}