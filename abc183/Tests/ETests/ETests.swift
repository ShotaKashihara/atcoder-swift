import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 3
                ...
                .#.
                ...
                """, """
                10
                """),
            (#filePath, #line, """
                4 4
                ...#
                ....
                ..#.
                ....
                """, """
                84
                """),
            (#filePath, #line, """
                8 10
                ..........
                ..........
                ..........
                ..........
                ..........
                ..........
                ..........
                ..........
                """, """
                13701937
                """),
        ]
        try cases.forEach(solve)
    }
}