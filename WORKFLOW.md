# WORKFLOW
[TOC]

## Workflow tools
1. vs code with bash terminal
2. fypp
3. gnu make
4. fpm
5. git
6. ford

### ford help

#### markdown syntax

[ford markdown](https://daringfireball.net/projects/markdown/basics)

## Add fypp files

### fypp -> f90 -> fpm
1. make: make src/fypp/*.fypp -> src/f90
2. fpm build: f90 -> *.obj
bash command:
```bash
make    # or `make dev`
fpm test
```
### Development sequence
1. idea & discussion.
2. and add to `ChangeLog.md`, add _idea_.fypp
3. use `submodule` snytax to complete _idea_.fypp
4. add interface to `forlab.fypp`
5. write a test program, `make && fpm test`
6. if successed, copy `test.f90` to `example` dir, and modify its name to `idea_example_name.f90`.

last, don't forget log your work has been done in `ChangeLog.md`✔.  
> Please refer to [gnu changelog](https://www.gnu.org/prep/standards/html_node/Change-Logs.html) for the format of `ChangeLog.md`.

### Push your work
1. git add your work.
2. git push to origin repo.
3. make a PR.

You can make a PR with more than one work, it depend on youself😉.

### A good thing
If you are not sure how to write some grammar, you can log on to the website:  
https://www.onlinegdb.com/online_fortran_compiler#

## Reference packages
Refer to other libraries, so that we can quickly know what else we can do 
for forlab and make it more perfect.
1. [Armadillo](http://arma.sourceforge.net/docs.html):   
C++ library for linear algebra & scientific computing.
2. 

### ~~Add f90 files~~
**Note: In order to avoid ambiguity, we will not add the f90 file source code now.**
1. add a submodule f90 files
    + submodule name
    + use forlab_kinds
    + module porcedure
    + formatted
2. add forlab interface
3. update makefile
    + add f90
    + add dependencies
4. make test
    + make && test