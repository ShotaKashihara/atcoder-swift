import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                3 1 2
                9 3 5
                8 6 4
                9 4 6
                """, """
                6
                """),
            (#filePath, #line, """
                6
                2 6 5 3 4 1
                10 8 16
                30 2 10
                10 17 8
                11 27 22
                8 6 5
                15 29 2
                """, """
                15
                """),
            (#filePath, #line, """
                9
                3 8 4 7 6 9 1 5 2
                7976 3696 9706
                768 8807 8521
                1133 8683 7120
                1189 3331 2259
                900 7451 1159
                6126 2639 7107
                5540 8253 2891
                8417 4220 9091
                8732 1417 1540
                """, """
                15865
                """),
            (#filePath, #line, """
                12
                11 9 1 12 2 7 3 5 10 4 6 8
                3960 3158 9029
                6521 6597 7581
                5688 2299 2123
                4946 4298 9122
                394 4350 9142
                3098 7151 2039
                8525 3758 6155
                6970 3658 9353
                9780 1778 3608
                6065 5562 923
                9701 5524 6482
                9395 6016 705
                """, """
                20637
                """),
        ]
        try cases.forEach(solve)
    }
}