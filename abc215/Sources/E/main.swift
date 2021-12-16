import Foundation

let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }

func pivotSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    let x = Int.random(in: array.indices)
    let pivot = array[x]

    var L = [Int]()
    var R = [Int]()
    for (i, e) in array.enumerated() {
        if i == x {
            continue
        } else {
            if e < pivot {
                L.append(e)
            } else if e > pivot {
                R.append(e)
            } else {
                if Bool.random() {
                    L.append(e)
                } else {
                    R.append(e)
                }
            }
        }
    }
    return pivotSort(array: L) + [pivot] + pivotSort(array: R)
}

print(pivotSort(array: A).map { String($0) }.joined(separator: " "))
