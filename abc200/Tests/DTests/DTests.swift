import XCTest
import TestLibrary

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5
                180 186 189 191 218
                """, """
                Yes
                1 1
                2 3 4
                """),
            (#filePath, #line, """
                2
                123 523
                """, """
                Yes
                1 1
                1 2
                """),
            (#filePath, #line, """
                6
                2013 1012 2765 2021 508 6971
                """, """
                No
                """),
        ]
        try cases.forEach(solve)
    }
}