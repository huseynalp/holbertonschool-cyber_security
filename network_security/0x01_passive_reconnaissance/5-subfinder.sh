#!/bin/bash
subfinder -d $1 -silent && subfinder -d $1 -silent -ip -o $1.txt
