#!/usr/bin/env bash

# Supposedly this is "better" than doing a makefile
ghc --make -Wall -outputdir out main.hs -o main.bin

