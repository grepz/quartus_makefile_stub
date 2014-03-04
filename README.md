# About

Simple Quartus Makefile stub

# Steps to build a project

## Edit Makefile

* Change =QPATH= to the path Quartus is installed in your system
* Change =FAMILY= according to your needs
* Change =PART= according to your needs
* If needed you can also change individual Quartus binaries locations(=QC=,=QP=, etc)
* Change =MOD= variable, set top level module name for the project
* Change =PRODUCT= variable, set suitable product name
* Add/change source files assigned to =SRCS= variable

## Edit PINS file

* Assign pin's and global variables according to your project needs

## Usecase

* `make all' to build a project
* `make prog' to program FPGA
