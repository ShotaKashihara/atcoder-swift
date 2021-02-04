import XCTest
import TestLibrary

final class ETests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "1\n1 2\n4\n1\n3 3\n2\n4 2\n5\n0 1\n1 1\n2 1\n3 1\n4 1\n", "1 2\n2 -1\n4 -1\n1 4\n1 0\n"),
            (#filePath, #line, "2\n1000000000 0\n0 1000000000\n4\n3 -1000000000\n4 -1000000000\n3 1000000000\n4 1000000000\n2\n4 1\n4 2\n", "5000000000 4000000000\n4000000000 5000000000\n"),
        ]
        try cases.forEach(solve)
    }
}