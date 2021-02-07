import XCTest
import TestLibrary

final class CTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2\n1 4 2 5\n", "2\n"),
            (#filePath, #line, "2\n3 1 5 4\n", "1\n"),
            (#filePath, #line, "4\n6 13 12 5 3 7 10 11 16 9 8 15 2 1 14 4\n", "2\n"),
        ]
        try cases.forEach(solve)
    }
}