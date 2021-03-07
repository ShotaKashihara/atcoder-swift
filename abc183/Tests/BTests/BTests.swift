import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 1 7 2
                """, """
                3.0000000000
                """),
            (#filePath, #line, """
                1 1 3 2
                """, """
                1.6666666667
                """),
            (#filePath, #line, """
                -9 99 -999 9999
                """, """
                -18.7058823529
                """),
        ]
        try cases.forEach(solve)
    }
}