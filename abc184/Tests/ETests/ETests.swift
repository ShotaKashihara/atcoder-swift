import XCTest
import TestLibrary

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 3.0

    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, """
                2 5
                S.b.b
                a.a.G
                """, """
                4
                """),
            (#filePath, #line, """
                11 11
                S##...#c...
                ...#d.#.#..
                ..........#
                .#....#...#
                #.....bc...
                #.##......#
                .......c..#
                ..#........
                a..........
                d..#...a...
                .#........G
                """, """
                14
                """),
            (#filePath, #line, """
                11 11
                .#.#.e#a...
                .b..##..#..
                #....#.#..#
                .#dd..#..#.
                ....#...#e.
                c#.#a....#.
                .....#..#.e
                .#....#b.#.
                .#...#..#..
                ......#c#G.
                #..S...#...
                """, """
                -1
                """),
        ]
        try cases.forEach(solve)
    }
}