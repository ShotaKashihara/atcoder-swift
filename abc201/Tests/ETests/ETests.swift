import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                1 2 1
                1 3 3
                """, """
                6
                """),
            (#filePath, #line, """
                5
                3 5 2
                2 3 2
                1 5 1
                4 5 13
                """, """
                62
                """),
            (#filePath, #line, """
                10
                5 7 459221860242673109
                6 8 248001948488076933
                3 5 371922579800289138
                2 5 773108338386747788
                6 10 181747352791505823
                1 3 803225386673329326
                7 8 139939802736535485
                9 10 657980865814127926
                2 4 146378247587539124
                """, """
                241240228
                """),
        ]
        try cases.forEach(solve)
    }
}