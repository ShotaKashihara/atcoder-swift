import XCTest
import TestLibrary

final class _046Tests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                3
                10 13 93
                5 27 35
                55 28 52
                """, """
                3
                """),
            (#filePath, #line, """
                3
                10 56 102
                16 62 108
                20 66 112
                """, """
                27
                """),
            (#filePath, #line, """
                20
                238 395 46 238 264 114 354 52 324 14 472 64 307 280 209 24 165 194 179 248
                270 83 377 332 173 21 362 75 66 342 229 117 124 481 48 235 376 13 420 74
                175 427 76 278 486 169 311 47 348 225 41 482 355 356 263 95 170 156 340 289
                """, """
                183
                """),
        ]
        try cases.forEach(solve)
    }
}