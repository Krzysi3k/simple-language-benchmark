package main

import (
	"fmt"
	"time"
)

func silnia(n int) int {
	if n > 1 {
		result := silnia(n - 1)
		return result * n
	}
	return 1
}

func main() {
	started := time.Now()
	for i := 1; i < 10001; i++ {
		silnia(15)
		for x := 1; x < 10001; x++ {
			if x == 9876 {
				break
			}
		}
	}
	ended := time.Now()
	fmt.Println("finished in:", ended.Sub(started))
}
