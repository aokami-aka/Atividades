#!/bin/bash

val=$(echo "scale=1;($1+1)*($2-1)"|bc)

echo "Valor final: $val"
