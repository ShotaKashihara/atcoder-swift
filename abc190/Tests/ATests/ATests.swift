import XCTest
import TestLibrary

final class ATests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2 1 0\n", "Takahashi\n"),
            (#filePath, #line, "2 2 0\n", "Aoki\n"),
            (#filePath, #line, "2 2 1\n", "Takahashi\n"),
        ]
        try cases.forEach(solve)
    }
}