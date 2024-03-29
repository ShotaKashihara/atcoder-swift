import XCTest
import TestLibrary

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                4
                0 0
                1 2
                0 1
                1 0
                """, """
                2
                """),
            (#filePath, #line, """
                23
                -5255 7890
                5823 7526
                5485 -113
                7302 5708
                9149 2722
                4904 -3918
                8566 -3267
                -3759 2474
                -7286 -1043
                -1230 1780
                3377 -7044
                -2596 -6003
                5813 -9452
                -9889 -7423
                2377 1811
                5351 4551
                -1354 -9611
                4244 1958
                8864 -9889
                507 -8923
                6948 -5016
                -6139 2769
                4103 9241
                """, """
                4060436
                """),
        ]
        try cases.forEach(solve)
    }
}