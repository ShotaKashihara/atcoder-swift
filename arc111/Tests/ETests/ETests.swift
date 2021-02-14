import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                3 1 2 5
                99 101 103 105
                """, """
                1
                25
                """),
        ]
        try cases.forEach(solve)
    }
}