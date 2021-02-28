import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2
                BB
                BW
                """, """
                2
                """),
            (#filePath, #line, """
                3
                BBB
                BBB
                W?W
                """, """
                4
                """),
            (#filePath, #line, """
                5
                ?????
                ?????
                ?????
                ?????
                ?????
                """, """
                40
                """),
        ]
        try cases.forEach(solve)
    }
}