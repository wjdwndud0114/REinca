# REinca

taking a look at inca's appGuard protection
========

## Encrypted strings

Most of the strings in the smali code is encrypted to delay reverse
engineering, so I wrote a little program so I can read what is going on.

The encrypted strings are handled by several classes such as ib and n located in com/inca/security.
You can see this when reading through the smali code,
```
const-string v7, "\u0007.\u0017.\u0000?\u001c\"\r=\u0002\'\n/\u001c\'\n)\u00004\u0010$"

invoke-static {v7}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
```

I wrote program to encrypt/decrypt (they used simple xor) a string.

to run:
```
make decString
./decString
```
Then enter "ib" or "n" to specify which keys to use. ib/n are the class names.

Since there are a ton, I wrote another program to decrypt an entire file. It
will take the file, find encrypted strings, decrypt it, and write the decrypted
string as a comment next to the encryted string.

to run:
```
make decFile
./decFile
```
Then enter the relative path for the file.
example:
```
smali/com/inca/security/Cire/AppGuardEngine.smali
```
Going based off previously written classes, I can decrypt a whole directory and
any subfolders.
```
make decDir
./decDir
```

## libcompatible

So libcompatible.so include anti-debugging and loads up libstub.so which I think
loads up Assembly-CSharp.dll and libengine.so with CRC and other stuff. Both of
these so files are encrypted as .sox files.

We need to debug the libcompatible.so with IDA and dump the so files mentioned,
so we can debug those to figure out what those files do.

### debugging libcompatible

So this file runs an antidebugging technique with ptrace() to prevent debugging.
This can be countered by hooking the ptrace method to return whatever we want.
This is done with a Xposed frame work and a so used for hooking.
