# REinca
taking a look at inca's appGuard protection
========

## Encrypted strings

The encrypted strings are handled by the classes ib and n located in com/inca/security.
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

