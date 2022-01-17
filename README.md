## asmenv

This is a simple and tiny dockerised env to play around with nasm and elf on  MacOS without
requiring the overhead of spawning a VM all the time.

### How to use

- Make sure Docker and GNUMake is installed
- Build asm environment using ``` make buildenv ```
- Put your asm files under src. Make sure you have one **main.asm** which will act as the entry point.
- Compile, link and run your elf file using ``` make run ```
- Output will be displayed on stdout
- The **main.o** and final elf file **out** will be generated under src it self.
- You can get rid of the above two files using make clean

### Some FAQs

- The target elf is elf32
- This is a play project which I created for learning and playing around with NASM. Since I would be using
  linux syscalls from within the asm code, I needed to link the .o file with the appropriate C libraries
  and linux headers which is not at all possible when I am on mac for obvious reasons.
- There might be other ways to achieve the same thing but I decided to go with this one.
- There might be issues, I will be fixing them as and when required.
