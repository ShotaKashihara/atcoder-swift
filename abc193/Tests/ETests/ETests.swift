import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                5 2 7 6
                1 1 3 1
                999999999 1 1000000000 1
                """, """
                20
                infinity
                1000000000999999999
                """),
        ]
        try cases.forEach(solve)
    }
}