import Foundation

let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

if 0 < A, 0 < B {
    print("Alloy")
} else if 0 < A, B == 0 {
    print("Gold")
} else if A == 0, 0 < B {
    print("Silver")
} else {
    print("Alloy")
}
