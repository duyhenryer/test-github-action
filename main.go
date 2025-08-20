package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	fmt.Println("Running the scheduled job...")
	fmt.Printf("Current time is: %s\n", time.Now().Format(time.RFC850))

	if len(os.Args) > 1 {
		fmt.Println("\nArguments received:")
		for i, arg := range os.Args[1:] {
			fmt.Printf("  Argument %d: %s\n", i+1, arg)
		}
	} else {
		fmt.Println("\nNo arguments passed to the program.")
	}
}