package main

import (
 "fmt"
)

func hi(s1 string) string {
	return "Hello " + s1
}

func main() {
	fmt.Println("Hello World");
	fmt.Println(hi("aseem"))
}
