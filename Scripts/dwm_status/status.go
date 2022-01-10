package main

import (
	"os/exec"
	"time"
)

func datetime() string {
  return time.Now().Format(time.RFC822)
}

func main() {
  for {
    exec.Command("xsetroot", "-name", datetime()).Run()
    
    now := time.Now()
		time.Sleep(now.Truncate(time.Minute).Add(time.Minute).Sub(now))
  }
}
