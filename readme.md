
take a look at main32.s x86 assembly source.
take a look at math.c c source.
understand what it does.
test what it does by running

`make -f makefile32`

yes, this is how you ask `make` to make a specific `makefile` file. (:

now you got `make32` binary.
run it.

you can run it, right? i don't need to tell you how.
see what is the output.

now, you have incomplete main64.s assembly source.
your task is to change the source code (at the lines with question marks) in a way, that 64 bit version of our program would behave exactly like 32 bit version.

this will help: https://github.com/comporg2022/notes/blob/main/functions/notes64

and `make -f makefile64` would build you x86_64 version of the program.
to test.





___________________________________________

for those, who are curious, try to answer these questions. to yourself. not to me.

why we didn't change the c file?
what is the size of long for gcc in 32 or 64 bit mode?

why in one case there is xor, and in other move?

why we need to pass -m32 flag to gcc to compile math.c in one case?

(and of course you remember what is -c flag?)

why '.asciz' is used? how do you think it differs from '.ascii'? try to change the source code to see what may happen.

why cannot you do the same on 64 bit arm system? (/me whispering: the ISA is called aarch64)
