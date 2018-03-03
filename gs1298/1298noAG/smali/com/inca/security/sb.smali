.class public Lcom/inca/security/sb;
.super Ljava/lang/Object;
.source "aa"

# interfaces
.implements Lcom/inca/security/Interface/BaseVerifier;
.implements Lcom/inca/security/Interface/SecureInteger;


# instance fields
.field private synthetic IIIIiiIiII:[I

.field private synthetic IIIiiiiIII:[B

.field private synthetic IIiIIIIIii:[B

.field private synthetic IIiIiIIIii:B

.field private synthetic IiIiIIIiIi:Ljavax/crypto/Cipher;

.field private synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:Ljavax/crypto/Cipher;

.field private synthetic IiiiiIiiIi:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/inca/security/sb;->IIiIIIIIii:[B

    .line 181
    iput-object v1, p0, Lcom/inca/security/sb;->IIIiiiiIII:[B

    .line 67
    iput-object v1, p0, Lcom/inca/security/sb;->IIIIiiIiII:[I

    .line 96
    iput v0, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    .line 117
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/inca/security/sb;->IIiIIIIIii:[B

    .line 181
    iput-object v1, p0, Lcom/inca/security/sb;->IIIiiiiIII:[B

    .line 67
    iput-object v1, p0, Lcom/inca/security/sb;->IIIIiiIiII:[I

    .line 96
    iput v0, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    .line 120
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()V

    .line 195
    invoke-direct {p0, p1}, Lcom/inca/security/sb;->IiiiIIIIii(I)V

    .line 146
    return-void
.end method

.method private synthetic declared-synchronized IiiiIIIIii()I
    .locals 3

    .prologue
    .line 5
    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/sb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/inca/security/sb;->IIiIIIIIii:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iget-byte v2, p0, Lcom/inca/security/sb;->IIiIiIIIii:B

    invoke-direct {p0, v1, v2}, Lcom/inca/security/sb;->IiiiIIIIii([BB)I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 108
    :goto_0
    monitor-exit p0

    return v0

    .line 189
    :catch_0
    move-exception v1

    .line 92
    :try_start_1
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V
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
    move-exception v1

    .line 178
    :try_start_2
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private synthetic IiiiIIIIii([BB)I
    .locals 5
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # B

    .prologue
    const/4 v0, 0x0

    .line 76
    move v1, v0

    move v2, v0

    .line 29
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 128
    rsub-int/lit8 v0, v1, 0x3

    mul-int/lit8 v3, v0, 0x8

    .line 24
    aget-byte v0, p1, v1

    xor-int/2addr v0, p2

    and-int/lit16 v4, v0, 0xff

    add-int/lit8 v0, v1, 0x1

    shl-int v1, v4, v3

    add-int/2addr v1, v2

    move v2, v1

    move v1, v0

    .line 29
    goto :goto_0

    .line 21
    :cond_0
    return v2
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
    const-string v1, "I\u0015["

    invoke-static {v1}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 65
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 61
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/sb;->IiiiiIiiIi:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :try_start_1
    const-string v1, "1v#"

    const-string v2, "1v#"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/inca/security/sb;->IiiIiiiIiI:Ljavax/crypto/Cipher;

    .line 141
    iget-object v2, p0, Lcom/inca/security/sb;->IiiIiiiIiI:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/inca/security/sb;->IiiiiIiiIi:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "I\u0015["

    invoke-static {v6}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 205
    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/sb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    .line 153
    iget-object v1, p0, Lcom/inca/security/sb;->IiIiIIIiIi:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/inca/security/sb;->IiiiiIiiIi:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const-string v5, "I\u0015["

    invoke-static {v5}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, p0

    .line 152
    .end local p0    # "this":Lcom/inca/security/sb;
    .local v0, "this":Lcom/inca/security/sb;
    :goto_0
    const/4 v1, 0x4

    :try_start_2
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/inca/security/sb;->IIiIIIIIii:[B

    .line 174
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/inca/security/sb;->IiiiiIiiIi:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/inca/security/sb;->IIiIiIIIii:B

    .line 155
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/inca/security/sb;->IIIIiiIiII:[I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .end local v0    # "this":Lcom/inca/security/sb;
    .restart local p0    # "this":Lcom/inca/security/sb;
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/inca/security/sb;->IiiiIIIIii(I)V

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
    .end local p0    # "this":Lcom/inca/security/sb;
    .restart local v0    # "this":Lcom/inca/security/sb;
    goto :goto_0

    .line 157
    .end local v0    # "this":Lcom/inca/security/sb;
    .restart local p0    # "this":Lcom/inca/security/sb;
    :catch_1
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/sb;
    .restart local v0    # "this":Lcom/inca/security/sb;
    goto :goto_0

    .line 130
    .end local v0    # "this":Lcom/inca/security/sb;
    .restart local p0    # "this":Lcom/inca/security/sb;
    :catch_2
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private synthetic declared-synchronized IiiiIIIIii(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-byte v1, p0, Lcom/inca/security/sb;->IIiIiIIIii:B

    invoke-virtual {p0, p1, v1}, Lcom/inca/security/sb;->IiiiIIIIii(IB)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/sb;->IIIiiiiIII:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/sb;->IiiIiiiIiI:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/inca/security/sb;->IIIiiiiIII:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/sb;->IIiIIIIIii:[B
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 86
    .end local p0    # "this":Lcom/inca/security/sb;
    .local v0, "this":Lcom/inca/security/sb;
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/inca/security/sb;->IIIIiiIiII:[I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    aput p1, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "this":Lcom/inca/security/sb;
    .restart local p0    # "this":Lcom/inca/security/sb;
    :catch_0
    move-exception v1

    .line 100
    :try_start_3
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    move-object v0, p0

    .line 104
    .end local p0    # "this":Lcom/inca/security/sb;
    .restart local v0    # "this":Lcom/inca/security/sb;
    goto :goto_0

    .line 33
    .end local v0    # "this":Lcom/inca/security/sb;
    .restart local p0    # "this":Lcom/inca/security/sb;
    :catch_1
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/sb;
    .restart local v0    # "this":Lcom/inca/security/sb;
    goto :goto_0

    .line 50
    .end local v0    # "this":Lcom/inca/security/sb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public IiiiIIIIii(IB)[B
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # B

    .prologue
    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 184
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    shr-int/lit8 v5, p1, 0x18

    int-to-byte v5, v5

    xor-int/2addr v5, p2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 172
    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    xor-int/2addr v4, p2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    xor-int/2addr v3, p2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 79
    int-to-byte v2, p1

    xor-int/2addr v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    return-object v0
.end method

.method public abs()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 467
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public add(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public add(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 89
    const/4 p1, 0x0

    .line 142
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public and(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 322
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    and-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public and(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 417
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 251
    const/4 p1, 0x0

    .line 459
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    and-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public decrease()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public divide(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    div-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public divide(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 177
    const/4 p1, 0x0

    .line 140
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    div-int v0, v2, v0

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public equal(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equal(Lcom/inca/security/Interface/SecureInteger;)Z
    .locals 2
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 456
    invoke-interface {p1}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 431
    const/4 p1, 0x0

    .line 284
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    if-ne v1, v0, :cond_0

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
    .line 491
    invoke-static {}, Lcom/inca/security/zb;->IiiiIIIIii()Lcom/inca/security/zb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inca/security/zb;->iIiIIiIIIi(Lcom/inca/security/Interface/BaseVerifier;)V

    .line 326
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 466
    return-void
.end method

.method public floatValue()D
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public increase()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public max(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 483
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public max(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 342
    const/4 p1, 0x0

    .line 277
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public min(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 378
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public min(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 216
    const/4 p1, 0x0

    .line 388
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public mod(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    rem-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public mod(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 84
    const/4 p1, 0x0

    .line 154
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    rem-int v0, v2, v0

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public multiply(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public multiply(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 51
    const/4 p1, 0x0

    .line 193
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public nagate()Lcom/inca/security/Interface/SecureInteger;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public or(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 285
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    or-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public or(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 386
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 318
    const/4 p1, 0x0

    .line 344
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public pow(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public pow(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 6
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 382
    const/4 p1, 0x0

    .line 265
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public set(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/inca/security/sb;->IiiiIIIIii(I)V

    .line 13
    return-void
.end method

.method public set(Lcom/inca/security/Interface/SecureInteger;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inca/security/sb;->IiiiIIIIii(I)V

    .line 60
    const/4 p1, 0x0

    .line 54
    return-void
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public subtract(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 52
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public subtract(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 27
    const/4 p1, 0x0

    .line 34
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    sub-int v0, v2, v0

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized verify()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/inca/security/sb;->IIIiiiiIII:[B

    iget-byte v2, p0, Lcom/inca/security/sb;->IIiIiIIIii:B

    invoke-direct {p0, v1, v2}, Lcom/inca/security/sb;->IiiiIIIIii([BB)I

    move-result v1

    .line 47
    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 39
    if-eq v2, v1, :cond_0

    .line 198
    :goto_0
    monitor-exit p0

    return v0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/sb;->IIIIiiIiII:[I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    aget v1, v1, v3

    if-eq v1, v2, :cond_1

    .line 93
    iget v1, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    .line 151
    iget-object v1, p0, Lcom/inca/security/sb;->IIIIiiIiII:[I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/inca/security/sb;->IiIiIiiIii:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    aput v2, v1, v3
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

.method public xor(I)Lcom/inca/security/Interface/SecureInteger;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 365
    new-instance v0, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v1

    xor-int/2addr v1, p1

    invoke-direct {v0, v1}, Lcom/inca/security/sb;-><init>(I)V

    return-object v0
.end method

.method public xor(Lcom/inca/security/Interface/SecureInteger;)Lcom/inca/security/Interface/SecureInteger;
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/Interface/SecureInteger;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/Interface/SecureInteger;

    invoke-interface {v0}, Lcom/inca/security/Interface/SecureInteger;->intValue()I

    move-result v0

    .line 409
    const/4 p1, 0x0

    .line 376
    new-instance v1, Lcom/inca/security/sb;

    invoke-direct {p0}, Lcom/inca/security/sb;->IiiiIIIIii()I

    move-result v2

    xor-int/2addr v0, v2

    invoke-direct {v1, v0}, Lcom/inca/security/sb;-><init>(I)V

    return-object v1
.end method
