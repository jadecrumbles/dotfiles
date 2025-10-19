#!/bin/bash
pacman -Qqe > explicit_packages.txt
pacman -Qqm >> explicit_packages.txt