# KaROTS
Kontrol and RAM OverView Technology Script is an interpreted language that reads, edits, and performs operations on Random Access Memory within individual bits written in Hexadecimal notation. file extension is .karots

KaROTS programs will only work with 64-bit and x86 systems.


**Notable commmands and modifiers**

"*" (When placed in front of a command):
selects every item under the command's domain (e.x., *void selects all RAM bits and sets them all to NULL values)

void

completely erases all RAM bytes and sets them to null values when given the * modifier

{integer}readcap(variable name)

captures a random selection of RAM bytes within the integer listed in between the braces and assigns a variable name in between parentheses and pastes it when a printn() command is initiated.

printn()

prints a string or variable value in output.
