import XCTest
import TestLibrary

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                FLIP
                2
                2 0 0
                1 1 4
                """, """
                LPFI
                """),
            (#filePath, #line, """
                2
                FLIP
                6
                1 1 3
                2 0 0
                1 1 2
                1 2 3
                2 0 0
                1 1 4
                """, """
                ILPF
                """),
        ]
        try cases.forEach(solve)
    }
}