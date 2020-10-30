package main

import "fmt"

func main() {
    //Enter your code here. Read input from STDIN. Print output to STDOUT
    var t, inp int
    fmt.Scan(&t)

    for i := 0; i < t; i++ {
        fmt.Scan(&inp)
        res := arithSum(3, inp) + arithSum(5, inp) - arithSum(15, inp)
        fmt.Println(res)
    }
}

func arithSum(b int, n int) int {
    x := (n - 1) / b
    return b * (x * (x + 1)) / 2
}
