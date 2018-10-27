gcc --help
Usage:
```shell
    gdb [options] [executable-file [core-file or process-id]]
    gdb [options] --args executable-file [inferior-arguments ...]
```

Options:
```

```
Usage within gdb:
```
file <file_name> 
	Use FILE as program to be debugged.
r|run
	Start debugged program.Input and output redirection with ">", "<", or ">>" are also allowed.
b|break [PROBE_MODIFIER] [LOCATION] [thread THREADNUM] [if CONDITION]
	Set breakpoint at specified location.
ni|nexti [N] 
	Step one instruction, but proceed through subroutine calls.
n|next [N] 
	Step program, proceeding through subroutine calls.
si|stepi [N]
	Step one instruction exactly.
s|step [N]
	Step program until it reaches a different source line.
display <EXP>
	Print value of expression EXP each time the program stops.
	Use "undisplay" to cancel display requests previously made.

layout prev | next | <layout_name> 
Layout names are:
   src   : Displays source and command windows.
   asm   : Displays disassembly and command windows.
   split : Displays source, disassembly and command windows.
   regs  : Displays register window. If existing layout
           is source/command or assembly/command, the 
           register window is displayed. If the
           source/assembly/command (split) is displayed, 
           the register window is displayed with 
           the window that has current logical focus.


p|print <EXP>
	Print value of expression EXP.
x/FMT <ADDRESS>
	Examine memory: x/FMT ADDRESS.

finish
	Execute until selected stack frame returns.
continue [N]
	Continue program being debugged, after signal or breakpoint.
set Val=EXP
bt|backtrace
	Print backtrace of all stack frames, or innermost COUNT frames.


```
Others:
- use regs with`$reg_name`
- use`b ClassName::function`set a breakpoint at a class-member-function 
- use tab to complete command.


