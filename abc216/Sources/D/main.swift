import Foundation

extension String {
    func regex(_ pattern: String) -> [NSTextCheckingResult] {
        try! NSRegularExpression(pattern: pattern, options: [])
            .matches(in: self, options: [], range: NSRange(0..<self.count))
    }
}

let S = readLine()!
print(
    S.regex(#"^([^\-]+\-)*[^\-]+$"#).isEmpty ? "No"
    : "Yes"
)
