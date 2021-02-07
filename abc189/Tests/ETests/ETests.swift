import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                1
                1 2
                4
                1
                3 3
                2
                4 2
                5
                0 1
                1 1
                2 1
                3 1
                4 1
                """, """
                1 2
                2 -1
                4 -1
                1 4
                1 0
                """),
            (#filePath, #line, "2\n1000000000 0\n0 1000000000\n4\n3 -1000000000\n4 -1000000000\n3 1000000000\n4 1000000000\n2\n4 1\n4 2\n", "5000000000 4000000000\n4000000000 5000000000\n"),
        ]
        try cases.forEach(solve)
    }
}
