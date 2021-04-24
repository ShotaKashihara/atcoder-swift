import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 2 4
                1 1 10
                2 1 20
                2 2 5
                1 1 30
                """, """
                20
                50
                55
                85
                """),
            (#filePath, #line, """
                3 3 5
                1 3 10
                2 1 7
                1 3 5
                2 2 10
                2 1 1
                """, """
                30
                44
                31
                56
                42
                """),
            (#filePath, #line, """
                200000 200000 4
                2 112219 100000000
                1 73821 100000000
                2 26402 100000000
                1 73821 100000000
                """, """
                20000000000000
                39999900000000
                59999800000000
                59999800000000
                """),
        ]
        try cases.forEach(solve)
    }
}