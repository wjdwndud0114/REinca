.class public Lcom/inca/security/j;
.super Ljava/lang/Object;
.source "q"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p0, "arg0"    # Ljava/lang/String;
    .param p1, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x0

    .line 98
    .line 138
    if-nez p0, :cond_1

    .line 132
    :cond_0
    return-object v3

    .line 94
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 30
    array-length v0, v6

    add-int/lit8 v0, v0, 0x5

    new-array v7, v0, [S

    .line 165
    aput-short v11, v7, v1

    .line 124
    rem-int/lit16 v0, p1, 0x100

    .line 182
    const/4 v2, 0x1

    int-to-short v3, v0

    aput-short v3, v7, v2

    .line 19
    mul-int/lit8 v0, v0, 0x7

    .line 46
    add-int/lit8 v8, v0, 0x46

    add-int/lit8 v0, v0, 0x1

    .line 44
    mul-int/lit8 v0, v0, 0x7

    .line 106
    add-int/lit8 v9, v0, 0x46

    add-int/lit8 v2, v0, 0x1

    .line 0
    const/4 v0, 0x4

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 67
    :goto_0
    array-length v5, v6

    if-ge v0, v5, :cond_2

    .line 96
    mul-int/lit8 v0, v4, 0x7

    .line 161
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v6, v2

    add-int/lit8 v10, v0, 0x46

    xor-int/2addr v10, v5

    add-int/lit8 v5, v0, 0x1

    and-int/lit16 v0, v10, 0xff

    int-to-short v10, v0

    add-int/lit8 v0, v2, 0x1

    aput-short v10, v7, v3

    move v2, v0

    move v3, v4

    move v4, v5

    .line 67
    goto :goto_0

    .line 117
    :cond_2
    aput-short v1, v7, v3

    .line 22
    add-int/lit8 v0, v3, -0x4

    .line 105
    shr-int/lit8 v2, v0, 0x8

    int-to-short v2, v2

    aput-short v2, v7, v11

    .line 120
    int-to-short v0, v0

    aput-short v0, v7, v12

    .line 180
    aget-short v0, v7, v11

    xor-int/2addr v0, v8

    int-to-short v0, v0

    aput-short v0, v7, v11

    .line 195
    aget-short v0, v7, v12

    xor-int/2addr v0, v9

    int-to-short v0, v0

    aput-short v0, v7, v12

    .line 123
    const-string v0, ""

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 179
    :goto_1
    array-length v4, v6

    add-int/lit8 v4, v4, 0x4

    if-ge v0, v4, :cond_0

    .line 166
    aget-short v0, v7, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x10

    if-ge v0, v4, :cond_3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}" #0

    invoke-static {v3}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-short v3, v7, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    move v0, v2

    goto :goto_1

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-short v3, v7, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static IiiiIIIIii([B[B)Ljava/lang/String;
    .locals 7
    .param p0, "arg0"    # [B
    .param p1, "arg1"    # [B

    .prologue
    const/4 v1, 0x0

    .line 153
    .line 160
    array-length v0, p0

    new-array v4, v0, [B

    .line 25
    :try_start_0
    const-string v0, "\u0007p\u007f" #MD5

    invoke-static {v0}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 139
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    .line 199
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    aget-byte v6, v5, v2

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v0, v6

    int-to-byte v0, v0

    add-int/lit8 v2, v2, 0x1

    aput-byte v0, v4, v3

    .line 8
    array-length v0, v5

    if-ge v2, v0, :cond_0

    .line 139
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 130
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    move v2, v1

    .line 8
    goto :goto_1

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_2
.end method
