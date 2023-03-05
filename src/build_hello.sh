#!/bin/bash

rm a.out
m68k-amigaos-gcc hello.c -mcrt=nix13
