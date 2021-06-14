import XCTest
import TestLibrary

final class _048Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4 3
                4 3
                9 5
                15 8
                8 6
                """, """
                21
                """),
            (#filePath, #line, """
                2 2
                7 6
                3 2
                """, """
                8
                """),
            (#filePath, #line, """
                10 12
                987753612 748826789
                36950727 36005047
                961239509 808587458
                905633062 623962559
                940964276 685396947
                959540552 928301562
                60467784 37828572
                953685176 482123245
                87983282 66762644
                912605260 709048491
                """, """
                6437530406
                """),
        ]
        try cases.forEach(solve)
    }
}