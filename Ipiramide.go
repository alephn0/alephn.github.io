package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Println("Digite la altura de la piramide ")
	fmt.Scanln(&n)
	for x := n; x > 0; x-- {
		for z := 1; z <= n-x; z++ {
			fmt.Print(" ")
		}
		for z := 1; z <= 2*x-1; z++ {
			fmt.Print("*")
		}
		fmt.Println("")
	}
}
