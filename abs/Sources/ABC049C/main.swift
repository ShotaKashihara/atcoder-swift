// ABC049C - Daydream
// https://atcoder.jp/contests/abs/tasks/arc065_a
// 実行制限時間: 2.0 sec
import Foundation

func solve(_ S: String) {
    // Write code here!
}

// =========================

let S = readLine()!

solve(S)
object InputUtils {
    fun next() = readLine()!!
    fun nextInt() = next().toInt()
    fun nextLong() = next().toLong()
    fun nextDouble() = next().toDouble()
    fun nextList() = next().split(" ")
    fun nextIntList() = next().split(" ").map { it.toInt() }
    fun nextLongList() = next().split(" ").map { it.toLong() }
    fun nextDoubleList() = next().split(" ").map { it.toDouble() }
}

fun main(args: Array<String>) {
    val b_dama = InputUtils.next().filter { it == '1' }.length

    println("$b_dama")
}
