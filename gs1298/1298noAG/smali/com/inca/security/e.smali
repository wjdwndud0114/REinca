.class public Lcom/inca/security/e;
.super Ljava/io/PrintWriter;
.source "d"


# instance fields
.field private synthetic IiIiIiiIii:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/Writer;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 46
    invoke-direct {p0}, Lcom/inca/security/e;->IiiiIIIIii()V

    .line 44
    return-void
.end method

.method private synthetic IiiiIIIIii()V
    .locals 5

    .prologue
    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 161
    :try_start_0
    const-string v1, "*\u00068l.\u0000)l%,;\"\u000f\'\u0002-\u000c"

    invoke-static {v1}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/e;->IiIiIiiIii:Ljavax/crypto/Cipher;

    .line 58
    iget-object v1, p0, Lcom/inca/security/e;->IiIiIiiIii:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "NH\\"

    invoke-static {v4}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    goto :goto_0

    .line 117
    :catch_2
    move-exception v0

    goto :goto_0

    .line 0
    nop

    :array_0
    .array-data 1
        0x50t
        -0x5at
        0x45t
        0x79t
        -0x2ct
        -0x4ft
        0x4bt
        -0x20t
        -0x48t
        -0x37t
        0x37t
        0x2t
        -0x76t
        -0xct
        0x5bt
        0x44t
    .end array-data
.end method


# virtual methods
.method public println(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 32
    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 139
    array-length v0, v1

    .line 199
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x10

    .line 159
    if-eqz v2, :cond_0

    .line 50
    rsub-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 114
    :cond_0
    new-array v0, v0, [B

    .line 85
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 33
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/e;->IiIiIiiIii:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/inca/security/va;->IiiiIIIIii([B)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 133
    .end local p1    # "arg0":Ljava/lang/Object;
    :goto_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    return-void

    .line 66
    .restart local p1    # "arg0":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 123
    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 81
    array-length v0, v1

    .line 168
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x10

    .line 16
    if-eqz v2, :cond_0

    .line 61
    rsub-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    .line 115
    :cond_0
    new-array v0, v0, [B

    .line 141
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 205
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/e;->IiIiIiiIii:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/inca/security/va;->IiiiIIIIii([B)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 152
    :goto_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return-void

    .line 25
    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    goto :goto_0
.end method
