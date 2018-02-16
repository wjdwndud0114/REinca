key = {"ib":(0x6B,0x43),"n":(0xF,0xD)}

def encrypt(c,s):
    if not c or not s:
        return
    i = len(s)
    arr = [None]*i
    j = i-1
    i = j
    while j >= 0:
        j = s[i]
        k = i-1
        arr[i] = chr(ord(j)^key[c][0])
        if(k < 0):
            break
        j = k - 1
        arr[k] = chr(ord(s[k])^key[c][1])
        i = j
    return ''.join(arr);

while 1:
    c = raw_input("Enter class: ")
    s = raw_input("Enter string: ")
    print(encrypt(c,s))
