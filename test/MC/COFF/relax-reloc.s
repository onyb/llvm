// RUN: llvm-mc %s -o %t -filetype=obj -triple=x86_64-pc-win32

// Don't crash trying to create relaxable relocations on COFF.

        add   bar(%rip), %rax
        call *bar(%rip)
