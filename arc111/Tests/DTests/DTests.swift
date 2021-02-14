import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                1 2
                2 3
                3 1
                3 3 3
                """, """
                ->
                ->
                ->
                """),
            (#filePath, #line, """
                3 2
                1 2
                2 3
                1 2 3
                """, """
                <-
                <-
                """),
            (#filePath, #line, """
                6 3
                1 2
                4 3
                5 6
                1 2 1 2 2 1
                """, """
                <-
                ->
                ->
                """),
        ]
        try cases.forEach(solve)
    }
}