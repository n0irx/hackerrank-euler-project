import java.io.*
import java.util.*

fun main() {
        val N: Int = readLine()!!.toInt()

        var cache: HashMap<String, Long> =
            HashMap<String, Long> ()

        for (i in 0..(N - 1)) {
            var n: Long = readLine()!!.toLong()
            var fibSum: Long = getFibSum(n, cache)
            println(fibSum)
        }
}

fun getFib(n: Int, cache: HashMap<String, Long>): Long {

    var value: Long
    if (cache.containsKey(n.toString())) {
        return cache.get(n.toString())!!
    } else if (n == 0) {
        value = 1
    } else if (n == 1) {
        value = 2
    } else {
        value = getFib(n - 1, cache) + getFib(n - 2, cache)
    }
    cache.set(n.toString(), value)
    return value
}

fun getFibSum(maxNum: Long, cache: HashMap<String, Long>): Long {

    var i: Int = 0
    var fibSum: Long = 0
    var fibN: Long = 0

    while (fibN < maxNum) {
        if (fibN % 2L == 0L) {
            fibSum += fibN
        }
        fibN = getFib(i, cache)
        i += 1
    }

    return fibSum
}
