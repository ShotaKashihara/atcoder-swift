import XCTest
import TestLibrary

final class CTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "6\na\n!a\nb\n!c\nd\n!d\n", "a\n"),
            (#filePath, #line, "10\nred\nred\nred\n!orange\nyellow\n!blue\ncyan\n!green\nbrown\n!gray\n", "satisfiable\n"),
        ]
        try cases.forEach(solve)
    }
}