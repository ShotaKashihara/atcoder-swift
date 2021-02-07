import XCTest
import TestLibrary

final class DTests: XCTestCase {
    func testExample() throws {
        let cases: [TestCase] = [
            (#filePath, #line, "2 6\n1 2 4\n2 2 4\n", "10\n"),
            (#filePath, #line, "5 1000000000\n583563238 820642330 44577\n136809000 653199778 90962\n54601291 785892285 50554\n5797762 453599267 65697\n468677897 916692569 87409\n", "163089627821228\n"),
            (#filePath, #line, "5 100000\n583563238 820642330 44577\n136809000 653199778 90962\n54601291 785892285 50554\n5797762 453599267 65697\n468677897 916692569 87409\n", "88206004785464\n"),
        ]
        try cases.forEach(solve)
    }
}