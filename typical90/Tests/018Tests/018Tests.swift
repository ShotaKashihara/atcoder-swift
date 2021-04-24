import XCTest
import TestLibrary

final class 018Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                2 1 1
                4
                0
                1
                2
                3
                """, """
                0.000000000000
                24.094842552111
                54.735610317245
                45.000000000000
                """),
            (#filePath, #line, """
                5121
                312000000 4123 3314
                6
                123
                12
                445
                4114
                42
                1233
                """, """
                4.322765775902
                0.421184234768
                15.640867693969
                35.396039162484
                1.475665637902
                43.338582976959
                """),
        ]
        try cases.forEach(solve)
    }
}