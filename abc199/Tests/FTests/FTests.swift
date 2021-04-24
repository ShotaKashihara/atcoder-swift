import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3 2 1
                3 1 5
                1 2
                1 3
                """, """
                3
                500000005
                500000008
                """),
            (#filePath, #line, """
                3 2 2
                12 48 36
                1 2
                1 3
                """, """
                750000036
                36
                250000031
                """),
            (#filePath, #line, """
                4 5 1000
                578 173 489 910
                1 2
                2 3
                3 4
                4 1
                1 3
                """, """
                201113830
                45921509
                67803140
                685163678
                """),
        ]
        try cases.forEach(solve)
    }
}