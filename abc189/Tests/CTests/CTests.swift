import XCTest
import TestLibrary

final class CTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "6\n2 4 4 9 4 9\n", "20\n"),
            (#filePath, #line, "6\n200 4 4 9 4 9\n", "200\n"),
        ]
        try cases.forEach(solve)
    }
}