import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 1
                5 6
                """, """
                2
                """),
            (#filePath, #line, """
                1 1
                1 200001
                """, """
                2
                """),
            (#filePath, #line, """
                2 3
                998244353 998244853
                """, """
                3
                """),
            (#filePath, #line, """
                1 1
                1 1
                """, """
                0
                """),
        ]
        try cases.forEach(solve)
    }
}