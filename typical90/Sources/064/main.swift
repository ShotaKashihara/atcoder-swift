//// 064 - Uplift（★3）
//// https://atcoder.jp/contests/typical90/tasks/typical90_bl
//// 実行制限時間: 2.0 sec
import Foundation
//
//let (N, Q): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()
//
//let A = readLine()!.split(separator: " ").map(String.init).map { Int($0)! }
//
//var B = (0..<N-1).map { i in A[i + 1] - A[i] }
//
//var huben = 0
//for i in 0..<N-1 {
//    huben += abs(A[i] - A[i + 1])
//}
////print(B)
//for _ in 0..<Q {
//    let (L, R, V): (Int, Int, Int) = { let l = readLine()!.split(separator: " ").map(String.init); return (Int(l[0])!-1, Int(l[1])!-1, Int(l[2])!) }()
//
//    if L > 0 {
//        let old = B[L-1]
//        if old > 0 {
//            B[L-1] += V
//        } else {
//            B[L-1] -= V
//        }
//        huben += B[L-1] - old
//    }
//    if R < N-1 {
//        let old = B[R]
//        if old > 0 {
//            B[R] -= V
//        } else {
//            B[R] += V
//        }
//        huben += B[R] - old
//    }
//
////    print(B)
//    print(huben)
//}


let (A, B): (Int, Int) = { let line = readLine()!.split(separator: " ").map(String.init); return (Int(line[0])!, Int(line[1])!) }()

for c in 0...255 {
    if A ^ c == B {
        print(c)
        exit(0)
    }
}
