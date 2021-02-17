import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                5
                1 2
                2 3
                2 4
                4 5
                4
                1 1 1
                1 4 10
                2 1 100
                2 2 1000
                """, """
                11
                110
                1110
                110
                100
                """),
            (#filePath, #line, """
                7
                2 1
                2 3
                4 2
                4 5
                6 1
                3 7
                7
                2 2 1
                1 3 2
                2 2 4
                1 6 8
                1 3 16
                2 4 32
                2 1 64
                """, """
                72
                8
                13
                26
                58
                72
                5
                """),
            (#filePath, #line, """
                11
                2 1
                1 3
                3 4
                5 2
                1 6
                1 7
                5 8
                3 9
                3 10
                11 4
                10
                2 6 688
                1 10 856
                1 8 680
                1 8 182
                2 2 452
                2 4 183
                2 6 518
                1 3 612
                2 6 339
                2 3 206
                """, """
                1657
                1657
                2109
                1703
                1474
                1657
                3202
                1474
                1247
                2109
                2559
                """),
        ]
        try cases.forEach(solve)
    }
}