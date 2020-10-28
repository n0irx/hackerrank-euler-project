import java.io.*
import java.util.*

fun main() {
        val N: Int = readLine()!!.toInt()

        for (i in 0..(N - 1)) {
            var n: Long = readLine()!!.toLong()
            var sum: Long = ArithSum(3, n) + ArithSum(5, n) - ArithSum(15, n)
            println(sum)
        }
}

fun ArithSum(b: Long, n: Long): Long {
    val N: Long = (n - 1) / b
    return b * (N * (N + 1)) / 2
}
