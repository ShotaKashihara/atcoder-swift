import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 1
                2 2 1
                """, """
                4
                """),
            (#filePath, #line, """
                5 2
                3 3 2
                4 4 3
                """, """
                90
                """),
            (#filePath, #line, """
                18 0
                """, """
                6402373705728000
                """),
        ]
        try cases.forEach(solve)
    }
}