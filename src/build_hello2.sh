#!/bin/bash

rm a.out
m68k-amigaos-gcc hello2.c -mcrt=nix13
