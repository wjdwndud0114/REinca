.class public Lcom/inca/security/kb;
.super Ljava/lang/Object;
.source "fa" #fa

# interfaces
.implements Lcom/inca/security/Interface/BaseVerifier;
.implements Lcom/inca/security/Interface/SecureLong;


# instance fields
.field private synthetic IIIIiiIiII:[B

.field private synthetic IIIiiiiIII:I

.field private synthetic IIiIIIIIii:Ljavax/crypto/Cipher;

.field private synthetic IIiIiIIIii:[J

.field private synthetic IiIiIIIiIi:Ljavax/crypto/Cipher;

.field private synthetic IiIiIiiIii:Ljavax/crypto/SecretKey;

.field private synthetic IiiIiiiIiI:B

.field private synthetic IiiiiIiiIi:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/inca/security/kb;->IiiiiIiiIi:[B

    .line 181
    iput-object v1, p0, Lcom/inca/security/kb;->IIIIiiIiII:[B

    .line 67
    iput-object v1, p0, Lcom/inca/security/kb;->IIiIiIIIii:[J

    .line 96
    iput v0, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    .line 117
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()V

    .line 22
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "arg0"    # J

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/inca/security/kb;->IiiiiIiiIi:[B

    .line 181
    iput-object v1, p0, Lcom/inca/security/kb;->IIIIiiIiII:[B

    .line 67
    iput-object v1, p0, Lcom/inca/security/kb;->IIiIiIIIii:[J

    .line 96
    iput v0, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    .line 120
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/inca/security/kb;->IiiiIIIIii(J)V

    .line 146
    return-void
.end method

.method private synthetic declared-synchronized IiiiIIIIii()J
    .locals 4

    .prologue
    .line 5
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/inca/security/kb;->IIiIIIIIii:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/inca/security/kb;->IiiiiIiiIi:[B

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    iget-byte v3, p0, Lcom/inca/security/kb;->IiiIiiiIiI:B

    invoke-direct {p0, v2, v3}, Lcom/inca/security/kb;->IiiiIIIIii([BB)J
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 108
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 189
    :catch_0
    move-exception v2

    .line 92
    :try_start_1
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6
    :catch_1
    move-exception v2

    .line 178
    :try_start_2
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private synthetic IiiiIIIIii([BB)J
    .locals 8
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # B

    .prologue
    .line 147
    const-wide/16 v2, 0x0

    .line 21
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 83
    rsub-int/lit8 v0, v1, 0x7

    mul-int/lit8 v4, v0, 0x8

    .line 14
    aget-byte v0, p1, v1

    xor-int/2addr v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    add-int/lit8 v0, v1, 0x1

    shl-long v4, v6, v4

    add-long/2addr v2, v4

    move v1, v0

    .line 21
    goto :goto_0

    .line 136
    :cond_0
    return-wide v2
.end method

.method private synthetic IiiiIIIIii()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    const-string v1, "\u0018>\n" #AES

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 65
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 61
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/kb;->IiIiIiiIii:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :try_start_1
    const-string v1, "\u0002\u0006\u0010"

    const-string v2, "\u0002\u0006\u0010"

    invoke-static {v2}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/inca/security/kb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    .line 141
    iget-object v2, p0, Lcom/inca/security/kb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/inca/security/kb;->IiIiIiiIii:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "\u0018>\n" #AES

    invoke-static {v6}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 205
    invoke-static {v1}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/kb;->IIiIIIIIii:Ljavax/crypto/Cipher;

    .line 153
    iget-object v1, p0, Lcom/inca/security/kb;->IIiIIIIIii:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/inca/security/kb;->IiIiIiiIii:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const-string v5, "\u0018>\n" #AES

    invoke-static {v5}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, p0

    .line 152
    .end local p0    # "this":Lcom/inca/security/kb;
    .local v0, "this":Lcom/inca/security/kb;
    :goto_0
    const/16 v1, 0x8

    :try_start_2
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/inca/security/kb;->IiiiiIiiIi:[B

    .line 174
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/inca/security/kb;->IiIiIiiIii:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/inca/security/kb;->IiiIiiiIiI:B

    .line 155
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/inca/security/kb;->IIiIiIIIii:[J
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .end local v0    # "this":Lcom/inca/security/kb;
    .restart local p0    # "this":Lcom/inca/security/kb;
    :goto_1
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/inca/security/kb;->IiiiIIIIii(J)V

    .line 199
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 40
    :try_start_3
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    move-object v0, p0

    .line 25
    .end local p0    # "this":Lcom/inca/security/kb;
    .restart local v0    # "this":Lcom/inca/security/kb;
    goto :goto_0

    .line 157
    .end local v0    # "this":Lcom/inca/security/kb;
    .restart local p0    # "this":Lcom/inca/security/kb;
    :catch_1
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/kb;
    .restart local v0    # "this":Lcom/inca/security/kb;
    goto :goto_0

    .line 130
    .end local v0    # "this":Lcom/inca/security/kb;
    .restart local p0    # "this":Lcom/inca/security/kb;
    :catch_2
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private synthetic declared-synchronized IiiiIIIIii(J)V
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-byte v1, p0, Lcom/inca/security/kb;->IiiIiiiIiI:B

    invoke-virtual {p0, p1, p2, v1}, Lcom/inca/security/kb;->IiiiIIIIii(JB)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/kb;->IIIIiiIiII:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/kb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/inca/security/kb;->IIIIiiIiII:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/kb;->IiiiiIiiIi:[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 86
    .end local p0    # "this":Lcom/inca/security/kb;
    .local v0, "this":Lcom/inca/security/kb;
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/inca/security/kb;->IIiIiIIIii:[J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aput-wide p1, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "this":Lcom/inca/security/kb;
    .restart local p0    # "this":Lcom/inca/security/kb;
    :catch_0
    move-exception v1

    .line 100
    :try_start_3
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    move-object v0, p0

    .line 104
    .end local p0    # "this":Lcom/inca/security/kb;
    .restart local v0    # "this":Lcom/inca/security/kb;
    goto :goto_0

    .line 33
    .end local v0    # "this":Lcom/inca/security/kb;
    .restart local p0    # "this":Lcom/inca/security/kb;
    :catch_1
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/kb;
    .restart local v0    # "this":Lcom/inca/security/kb;
    goto :goto_0

    .line 50
    .end local v0    # "this":Lcom/inca/security/kb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public IiiiIIIIii(JB)[B
    .locals 13
    .param p1, "arg0"    # J
    .param p3, "arg1"    # B

    .prologue
    .line 200
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 184
    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x38

    shr-long v10, p1, v9

    long-to-int v9, v10

    int-to-byte v9, v9

    xor-int v9, v9, p3

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 172
    const/16 v8, 0x30

    shr-long v8, p1, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    xor-int v8, v8, p3

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1
    const/16 v7, 0x28

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    xor-int v7, v7, p3

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 79
    const/16 v6, 0x20

    shr-long v6, p1, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    xor-int v6, v6, p3

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 127
    const/16 v5, 0x18

    shr-long v6, p1, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    xor-int v5, v5, p3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 11
    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    xor-int v4, v4, p3

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 9
    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    xor-int v3, v3, p3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 102
    long-to-int v2, p1

    int-to-byte v2, v2

    xor-int v2, v2, p3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    return-object v0
.end method

.method public abs()Lcom/inca/security/Interface/SecureLong;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public add(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 35
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public add(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 116
    const/4 p1, 0x0

    .line 52
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public and(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 417
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    and-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public and(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 458
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 343
    const/4 p1, 0x0

    .line 285
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    and-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public decrease()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 477
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public divide(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 95
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    div-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public divide(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 23
    const/4 p1, 0x0

    .line 88
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    div-long v0, v4, v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equal(J)Z
    .locals 3
    .param p1, "arg0"    # J

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equal(Lcom/inca/security/Interface/SecureLong;)Z
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 263
    invoke-interface {p1}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 239
    const/4 p1, 0x0

    .line 394
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/inca/security/zb;->IiiiIIIIii()Lcom/inca/security/zb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inca/security/zb;->iIiIIiIIIi(Lcom/inca/security/Interface/BaseVerifier;)V

    .line 238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 492
    return-void
.end method

.method public floatValue()D
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    long-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public increase()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 467
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    return-wide v0
.end method

.method public max(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 310
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public max(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 296
    const/4 p1, 0x0

    .line 404
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public min(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 231
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public min(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 421
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 391
    const/4 p1, 0x0

    .line 483
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public mod(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 74
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    rem-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public mod(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 43
    const/4 p1, 0x0

    .line 203
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    rem-long v0, v4, v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public multiply(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 171
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public multiply(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 37
    const/4 p1, 0x0

    .line 111
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public nagate()Lcom/inca/security/Interface/SecureLong;
    .locals 6

    .prologue
    .line 322
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public or(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 386
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    or-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public or(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 213
    const/4 p1, 0x0

    .line 365
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    or-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public pow(J)Lcom/inca/security/Interface/SecureLong;
    .locals 7
    .param p1, "arg0"    # J

    .prologue
    .line 62
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public pow(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 248
    const/4 p1, 0x0

    .line 378
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    long-to-double v4, v4

    long-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public set(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/inca/security/kb;->IiiiIIIIii(J)V

    .line 13
    return-void
.end method

.method public set(Lcom/inca/security/Interface/SecureLong;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/inca/security/kb;->IiiiIIIIii(J)V

    .line 60
    const/4 p1, 0x0

    .line 54
    return-void
.end method

.method public shortValue()S
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public subtract(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 113
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public subtract(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 80
    const/4 p1, 0x0

    .line 187
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized verify()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/inca/security/kb;->IIIIiiIiII:[B

    iget-byte v2, p0, Lcom/inca/security/kb;->IiiIiiiIiI:B

    invoke-direct {p0, v1, v2}, Lcom/inca/security/kb;->IiiiIIIIii([BB)J

    move-result-wide v2

    .line 47
    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 39
    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 198
    :goto_0
    monitor-exit p0

    return v0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/kb;->IIiIiIIIii:[J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aget-wide v2, v1, v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    .line 151
    iget-object v1, p0, Lcom/inca/security/kb;->IIiIiIIIii:[J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/inca/security/kb;->IIIiiiiIII:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aput-wide v4, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public xor(J)Lcom/inca/security/Interface/SecureLong;
    .locals 5
    .param p1, "arg0"    # J

    .prologue
    .line 217
    new-instance v0, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v2

    xor-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/inca/security/kb;-><init>(J)V

    return-object v0
.end method

.method public xor(Lcom/inca/security/Interface/SecureLong;)Lcom/inca/security/Interface/SecureLong;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureLong;

    .prologue
    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureLong;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureLong;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 389
    const/4 p1, 0x0

    .line 329
    new-instance v2, Lcom/inca/security/kb;

    invoke-direct {p0}, Lcom/inca/security/kb;->IiiiIIIIii()J

    move-result-wide v4

    xor-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/inca/security/kb;-><init>(J)V

    return-object v2
.end method
