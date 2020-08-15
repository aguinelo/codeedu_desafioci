package main

import "testing"

func TestSoma(t *testing.T ) {
	total := soma(5, 5)
    if total != 10 {
		t.Errorf("Soma não esta correta: %d, esperava: %d.", total, 10)
    }
}