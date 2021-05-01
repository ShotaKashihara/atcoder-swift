import XCTest
import TestLibrary

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1 10 10
                3 5
                """, """
                2.857142857142857
                """),
            (#filePath, #line, """
                1 10 10
                3 2
                """, """
                0.0
                """),
            (#filePath, #line, """
                5 896 483
                228 59
                529 310
                339 60
                78 266
                659 391
                """, """
                245.3080684596577
                """),
        ]
        try cases.forEach(solve)
    }
}