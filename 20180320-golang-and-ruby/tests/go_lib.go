package main

import "C"

//export MyAdd
func MyAdd(a, b C.int) C.int {
  return a + b
}

//export MyFib
func MyFib(n C.int) C.int {
  if n <= 0 {
    return 0
  }
  if n == 1 {
    return 1
  }

  return MyFib(n - 1) + MyFib(n - 2)
}

func main() {}
