import Foundation

let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
var B = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
A.sort()
B.sort()

let diff = zip(A, B).map { abs($0 - $1) }.reduce(0, +)
print(diff)
