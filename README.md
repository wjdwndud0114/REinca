# REinca
taking a look at inca's appGuard protection
========

## Encrypted strings

The encrypted strings are handled by the classes ib and n located in com/inca/security.

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

