package main
import "fmt"

func main() {
    var num int
    fmt.Println("Digite um numero: ")
    fmt.Scanln(&num)
    
    switch {
    case num == 0:
        fmt.Println("O numero é zero")
    case num % 2 == 0:
        fmt.Println("O numero é par")
    case num % 2 != 0:
        fmt.Println("O numero é impar")
    }
}
