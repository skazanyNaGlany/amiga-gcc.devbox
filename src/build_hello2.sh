#!/bin/bash

# -mcrt=nix13 means that we want to build for Kickstart 1.3

rm a.out
m68k-amigaos-gcc hello2.c -mcrt=nix13
