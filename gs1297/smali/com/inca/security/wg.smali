.class public Lcom/inca/security/wg;
.super Ljava/lang/Object;
.source "wc"


# instance fields
.field private final synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Lcom/inca/security/Interface/BaseEventInvoker;

.field private synthetic IIiIiIIIii:I

.field private synthetic IiIiIIIiIi:Z

.field private synthetic IiIiIiiIii:Landroid/content/Context;

.field private synthetic IiiIiiiIiI:[B

.field private synthetic IiiiiIiiIi:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inca/security/Interface/BaseEventInvoker;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/inca/security/Interface/BaseEventInvoker;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/inca/security/wg;->IiiIiiiIiI:[B

    .line 58
    iput-object v0, p0, Lcom/inca/security/wg;->IiIiIiiIii:Landroid/content/Context;

    .line 117
    iput-object v0, p0, Lcom/inca/security/wg;->IIIiiiiIII:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 97
    iput v2, p0, Lcom/inca/security/wg;->IIiIiIIIii:I

    .line 105
    iput-boolean v2, p0, Lcom/inca/security/wg;->IiIiIIIiIi:Z

    .line 120
    iput-object v0, p0, Lcom/inca/security/wg;->IiiiiIiiIi:Ljava/lang/Exception;

    .line 146
    iput-object p1, p0, Lcom/inca/security/wg;->IiIiIiiIii:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/inca/security/wg;->IIIiiiiIII:Lcom/inca/security/Interface/BaseEventInvoker;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inca/security/wg;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u001b"

    invoke-static {v1}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/wg;->IIIIiiIiII:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/inca/security/wg;->IiiiIIIIii()V

    .line 168
    return-void
.end method

.method private synthetic IIiIIiIiIi()[B
    .locals 9

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x75t
        0x45t
        0x31t
        0x4ft
        -0x34t
        0x66t
        -0x40t
        0xet
        -0x16t
        0x70t
        0x33t
        -0x34t
        0xet
        -0x79t
        0x46t
        0x6ct
        0x7at
        0x44t
        0x24t
        0x4dt
        -0x25t
        0x72t
        -0x74t
        0x4et
        -0x5bt
        0x6et
        0x35t
    .end array-data
.end method

.method private synthetic IiIIIIIIIi()[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 177
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    new-array v1, v4, [B

    .line 196
    const-wide v2, 0xf0b22166L

    .line 88
    invoke-static {v2, v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic IiiiIIIIii()V
    .locals 10

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    const/16 v2, 0x400

    :try_start_0
    new-array v6, v2, [B

    .line 176
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    const/16 v2, 0x645e

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 160
    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x2

    invoke-virtual {v7, v6, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 157
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 25
    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 78
    invoke-virtual {p0}, Lcom/inca/security/wg;->IiiiIIIIii()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    const/16 v2, 0x6345

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 119
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 174
    const/16 v2, 0x8

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 155
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 32
    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 130
    invoke-direct {p0}, Lcom/inca/security/wg;->iiiiiiiIii()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 26
    const/16 v2, 0x7448

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 139
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 199
    const/16 v2, 0x8

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 8
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 50
    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 159
    invoke-virtual {p0}, Lcom/inca/security/wg;->iiiiIIiiII()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 12
    const/16 v2, 0x6348

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 114
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 85
    const/16 v2, 0x8

    invoke-static {v2, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 100
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 164
    invoke-virtual {v7, v6, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    invoke-direct {p0}, Lcom/inca/security/wg;->IiIIIIIIIi()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 86
    invoke-direct {p0}, Lcom/inca/security/wg;->IIiIIiIiIi()[B

    move-result-object v8

    array-length v9, v8

    move v2, v4

    move v5, v4

    :goto_0
    if-ge v2, v9, :cond_2

    aget-byte v2, v8, v5

    .line 204
    if-eqz v2, :cond_1

    move v2, v3

    .line 163
    :goto_1
    if-eqz v2, :cond_0

    .line 189
    const/16 v1, 0x5361

    invoke-static {v1, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v7, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 6
    invoke-direct {p0}, Lcom/inca/security/wg;->IIiIIiIiIi()[B

    move-result-object v1

    array-length v1, v1

    int-to-short v1, v1

    invoke-static {v1, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 178
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 15
    invoke-virtual {v7, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    invoke-direct {p0}, Lcom/inca/security/wg;->IIiIIiIiIi()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    const/16 v1, 0x5370

    invoke-static {v1, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 202
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v7, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    invoke-direct {p0}, Lcom/inca/security/wg;->iIiIIiIIIi()[B

    move-result-object v2

    .line 206
    array-length v1, v2

    int-to-short v1, v1

    invoke-static {v1, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 59
    const/4 v5, 0x0

    .line 69
    const/4 v1, 0x6

    const/4 v8, 0x2

    invoke-virtual {v7, v6, v5, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 167
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 54
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 10
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    invoke-static {v1, v6}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 173
    const/4 v1, 0x0

    const/4 v5, 0x4

    invoke-virtual {v7, v6, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 39
    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 145
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/wg;->IiiIiiiIiI:[B

    .line 20
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 201
    .end local p0    # "this":Lcom/inca/security/wg;
    .local v0, "this":Lcom/inca/security/wg;
    :goto_2
    iget-object v1, v0, Lcom/inca/security/wg;->IiiIiiiIiI:[B

    if-nez v1, :cond_3

    .line 63
    iput-boolean v4, p0, Lcom/inca/security/wg;->IiIiIIIiIi:Z

    .line 143
    :goto_3
    return-void

    .line 86
    .end local v0    # "this":Lcom/inca/security/wg;
    .restart local p0    # "this":Lcom/inca/security/wg;
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 163
    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 151
    iput-object v1, p0, Lcom/inca/security/wg;->IiiiiIiiIi:Ljava/lang/Exception;

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/wg;
    .restart local v0    # "this":Lcom/inca/security/wg;
    goto :goto_2

    .line 185
    :cond_3
    iput-boolean v3, p0, Lcom/inca/security/wg;->IiIiIIIiIi:Z

    goto :goto_3
.end method

.method private synthetic IiiiIIIIii(Lcom/inca/security/pb;)V
    .locals 4
    .param p1, "arg0"    # Lcom/inca/security/pb;

    .prologue
    .line 635
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Lcom/inca/security/wb;

    move-result-object v0

    iget v0, v0, Lcom/inca/security/wb;->IiIiIiiIii:I

    if-lez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/inca/security/wg;->IIIiiiiIII:Lcom/inca/security/Interface/BaseEventInvoker;

    if-eqz v0, :cond_0

    .line 1502
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 756
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Lcom/inca/security/wb;

    move-result-object v2

    iget v2, v2, Lcom/inca/security/wb;->IiIiIiiIii:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 598
    iget-object v1, p0, Lcom/inca/security/wg;->IIIiiiiIII:Lcom/inca/security/Interface/BaseEventInvoker;

    const/4 v2, 0x2

    const/16 v3, 0xe

    invoke-interface {v1, v2, v3, v0}, Lcom/inca/security/Interface/BaseEventInvoker;->conditionCallback(II[B)V

    .line 553
    :cond_0
    return-void
.end method

.method private synthetic IiiiIIIIii([B)V
    .locals 6
    .param p1, "arg0"    # [B

    .prologue
    const/4 v5, 0x0

    .line 873
    invoke-direct {p0}, Lcom/inca/security/wg;->iiIiIIIIIi()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/inca/security/ca;->iIiIIiIIIi([B[B)[B

    move-result-object v3

    .line 1348
    const-string v0, "\u0002\u0013VC\u0005A\u0002\u0011\u001e\u0016V\u0015R]\u0007I\u0003\u0016\u001e\u0011\u0002\u0014\u0007]\u0005G\u0007B\u0004\u0015\u0002\u0015VB\u0004\u0016"

    invoke-static {v0}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v1

    .line 771
    if-eqz v1, :cond_0

    .line 1494
    invoke-virtual {v1}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inca/security/wg;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1497
    const/4 v2, 0x0

    .line 951
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    if-eqz v1, :cond_1

    .line 1464
    const/4 v0, 0x0

    :try_start_1
    array-length v2, v3

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 864
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    :cond_1
    if-eqz v1, :cond_2

    .line 653
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1361
    :cond_2
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1404
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 883
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 511
    if-eqz v1, :cond_2

    .line 653
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 673
    :catch_2
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1109
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 1434
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 511
    if-eqz v1, :cond_2

    .line 653
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 673
    :catch_4
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 932
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 511
    :goto_3
    if-eqz v1, :cond_3

    .line 653
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1200
    :cond_3
    :goto_4
    throw v0

    .line 673
    :catch_5
    move-exception v1

    .line 721
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 932
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1109
    :catch_6
    move-exception v0

    goto :goto_2

    .line 1404
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private synthetic iIiIIiIIIi()[B
    .locals 9

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x3dt
        -0x3et
        -0xet
        0x6ct
        -0x3at
        -0x46t
        0x17t
        -0x61t
        0x2bt
        0x28t
        0x55t
        0x4t
        -0x2ft
        -0x24t
        -0x2et
        0x26t
    .end array-data
.end method

.method private synthetic iiIiIIIIIi()[B
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 915
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 659
    const-string v1, "null"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1244
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v2

    .line 1377
    if-eqz v2, :cond_6

    .line 1150
    invoke-virtual {v2}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {v2}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1518
    :cond_0
    invoke-virtual {v2}, Lcom/inca/security/c;->IiIIiiIiII()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1432
    invoke-virtual {v2}, Lcom/inca/security/c;->IiIIiiIiII()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 1342
    :goto_0
    const-string v2, "B\nF\u0005@\u0001C\u0007\u0016PH\u0001EVG\u0007\u0011\u0007\u0013UG\n@QI\u0001\u0011\u0002B\u0002FQ\u0013\u0001\u0011\u0007F\u0004G\u0006\u0011\u000b\u0014VH\u0004B\u000b\u0013W\u0014VBW\u0012RIV\u0014\u0003FWB\u0001\u0011\u0005\u0014WEV@"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 837
    array-length v2, v1

    array-length v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v6, v2, [B

    move v2, v3

    move v4, v3

    move v5, v3

    .line 1141
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 523
    aget-byte v2, v1, v5

    aget-byte v8, v0, v4

    xor-int/2addr v2, v8

    int-to-byte v2, v2

    add-int/lit8 v4, v4, 0x1

    aput-byte v2, v6, v5

    .line 1256
    array-length v2, v0

    if-lt v4, v2, :cond_1

    move v4, v3

    .line 1141
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 667
    :cond_2
    :try_start_0
    const-string v0, "yE\u0001"

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1077
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 743
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    :goto_2
    iget-object v1, p0, Lcom/inca/security/wg;->IiIiIiiIii:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1338
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1382
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1479
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 1498
    add-long v10, v4, v8

    xor-long/2addr v4, v8

    xor-long/2addr v4, v10

    .line 880
    invoke-static {v4, v5, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 537
    :try_start_1
    const-string v2, "=wE"

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1184
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 569
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 687
    :goto_3
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v5, v3

    move v2, v3

    :goto_4
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 647
    aget-byte v2, v0, v5

    aget-byte v6, v1, v4

    xor-int/2addr v2, v6

    int-to-byte v6, v2

    add-int/lit8 v2, v5, 0x1

    aput-byte v6, v0, v5

    .line 687
    add-int/lit8 v4, v4, -0x1

    move v5, v2

    goto :goto_4

    .line 707
    :catch_0
    move-exception v0

    .line 1194
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v6

    goto :goto_2

    .line 1116
    :catch_1
    move-exception v2

    .line 500
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 926
    :cond_3
    array-length v1, v7

    new-array v1, v1, [B

    .line 1443
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v4, v3

    move v5, v2

    :goto_5
    if-ltz v2, :cond_5

    .line 603
    aget-byte v2, v7, v5

    aget-byte v6, v0, v3

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 1329
    array-length v2, v0

    if-gtz v2, :cond_4

    .line 1443
    :cond_4
    add-int/lit8 v2, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_5

    .line 1160
    :cond_5
    :try_start_2
    const-string v0, "yE\u0001"

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 775
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 599
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1049
    :goto_6
    return-object v0

    .line 526
    :catch_2
    move-exception v0

    .line 984
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v1

    .line 547
    goto :goto_6

    :cond_6
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_0
.end method

.method private synthetic iiiiiiiIii()[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    new-array v1, v4, [B

    .line 73
    const-wide v2, 0x720e342e

    .line 52
    invoke-static {v2, v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 4
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 148
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public IiIiiIiiII()[B
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/inca/security/wg;->IiiIiiiIiI:[B

    return-object v0
.end method

.method public IiiiIIIIii()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/inca/security/wg;->IIiIiIIIii:I

    return v0
.end method

.method public IiiiIIIIii(Lcom/inca/security/pb;Z)I
    .locals 13
    .param p1, "arg0"    # Lcom/inca/security/pb;
    .param p2, "arg1"    # Z

    .prologue
    .line 371
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 217
    const/4 v1, 0x0

    .line 409
    const/4 v2, 0x2

    .line 376
    const/4 v0, 0x0

    .line 433
    if-eqz p2, :cond_1

    .line 389
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 329
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Lcom/inca/security/wb;

    move-result-object v3

    iget-wide v6, v3, Lcom/inca/security/wb;->IIIIiiIiII:J

    .line 218
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 422
    sub-long v8, v4, v6

    const-wide/32 v10, -0x5265c00

    cmp-long v3, v8, v10

    if-ltz v3, :cond_0

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 487
    :cond_0
    const/4 v0, 0x1

    .line 456
    :cond_1
    const/16 v3, 0x400

    new-array v7, v3, [B

    .line 431
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    const/16 v3, 0x645e

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 338
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 308
    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 475
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 258
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/inca/security/wg;->IiiiIIIIii()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 236
    :goto_0
    const/4 v2, 0x3

    .line 341
    const/16 v3, 0x7448

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 345
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 215
    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 337
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 305
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 452
    invoke-virtual {p0}, Lcom/inca/security/wg;->iiiiIIiiII()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 348
    :goto_1
    const/4 v2, 0x4

    .line 238
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Ljava/util/ArrayList;

    move-result-object v5

    .line 492
    const/4 v0, 0x0

    .line 246
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move-object v0, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    add-int/lit8 v4, v4, 0x4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v3

    .line 358
    goto :goto_2

    .line 468
    :cond_2
    invoke-virtual {p1}, Lcom/inca/security/pb;->iIiIIiIIIi()J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 442
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1274
    :catch_0
    move-exception v0

    move-object v12, v0

    move v0, v2

    move v2, v1

    move-object v1, v12

    .line 964
    :goto_3
    iput-object v1, p0, Lcom/inca/security/wg;->IiiiiIiiIi:Ljava/lang/Exception;

    .line 671
    if-nez v2, :cond_3

    .line 1202
    add-int/lit8 v0, v0, 0x64

    .line 1365
    :cond_3
    :goto_4
    invoke-direct {p0, p1}, Lcom/inca/security/wg;->IiiiIIIIii(Lcom/inca/security/pb;)V

    .line 778
    :goto_5
    return v0

    .line 326
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 466
    const/4 v0, 0x0

    const/16 v3, 0x8

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 250
    :cond_5
    const/16 v0, 0x6550

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 411
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v7, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 461
    add-int/lit8 v3, v4, 0x4

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 375
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 270
    const/4 v3, 0x4

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 243
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 298
    invoke-static {v4, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 307
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object v0, v3

    .line 410
    goto :goto_6

    .line 210
    :cond_6
    const/4 v2, 0x5

    .line 403
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiIIIIIIIi()Ljava/util/ArrayList;

    move-result-object v5

    .line 247
    const/4 v0, 0x0

    .line 290
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move-object v0, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    add-int/lit8 v4, v4, 0x4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v3

    .line 235
    goto :goto_7

    .line 401
    :cond_7
    const/16 v0, 0x6850

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 482
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v7, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 209
    add-int/lit8 v3, v4, 0x4

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 319
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 272
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 398
    const/4 v3, 0x4

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 364
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 208
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object v0, v3

    .line 222
    goto :goto_8

    .line 259
    :cond_8
    const/4 v2, 0x6

    .line 257
    invoke-virtual {p1}, Lcom/inca/security/pb;->iiiiiiiIii()Ljava/util/ArrayList;

    move-result-object v5

    .line 489
    const/4 v0, 0x0

    .line 297
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move-object v0, v3

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    add-int/lit8 v4, v4, 0x4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v3

    .line 273
    goto :goto_9

    .line 317
    :cond_9
    const/16 v0, 0x6950

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 267
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v7, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 437
    add-int/lit8 v3, v4, 0x4

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 268
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 463
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 441
    const/4 v3, 0x4

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 219
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 262
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object v0, v3

    .line 435
    goto :goto_a

    .line 415
    :cond_a
    const/4 v2, 0x7

    .line 256
    invoke-virtual {p1}, Lcom/inca/security/pb;->iIiIIiIIIi()Ljava/util/ArrayList;

    move-result-object v5

    .line 469
    const/4 v0, 0x0

    .line 396
    const/4 v3, 0x0

    .line 488
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    move v3, v0

    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/vb;

    .line 330
    invoke-virtual {v0}, Lcom/inca/security/vb;->iIiIIiIIIi()I

    move-result v9

    if-nez v9, :cond_b

    .line 454
    invoke-virtual {v0}, Lcom/inca/security/vb;->IiiiIIIIii()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 212
    add-int/lit8 v4, v4, 0x4

    .line 406
    invoke-virtual {v0}, Lcom/inca/security/vb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v9

    .line 413
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    move v4, v3

    move v3, v0

    .line 367
    goto :goto_b

    .line 385
    :cond_c
    const/16 v0, 0x456d

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 350
    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v7, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 325
    add-int/lit8 v0, v4, 0x4

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 379
    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 432
    const/4 v0, 0x0

    const/4 v3, 0x4

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/vb;

    .line 383
    invoke-virtual {v0}, Lcom/inca/security/vb;->iIiIIiIIIi()I

    move-result v4

    if-nez v4, :cond_d

    .line 314
    invoke-virtual {v0}, Lcom/inca/security/vb;->IiiiIIIIii()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    invoke-virtual {v0}, Lcom/inca/security/vb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 427
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 428
    invoke-virtual {v0}, Lcom/inca/security/vb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_c

    .line 349
    :cond_e
    const/16 v2, 0x8

    .line 323
    invoke-virtual {p1}, Lcom/inca/security/pb;->IIiIIiIiIi()Ljava/util/ArrayList;

    move-result-object v5

    .line 470
    const/4 v0, 0x0

    .line 356
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move-object v0, v3

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 420
    add-int/lit8 v4, v4, 0x4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v3

    .line 445
    goto :goto_d

    .line 288
    :cond_f
    const/16 v0, 0x6953

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 360
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v7, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 220
    add-int/lit8 v3, v4, 0x4

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 332
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 340
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 443
    const/4 v3, 0x4

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 424
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 362
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object v0, v3

    .line 426
    goto :goto_e

    .line 274
    :cond_10
    const/4 v0, 0x7

    .line 478
    const/16 v2, 0x9

    .line 393
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    .line 237
    invoke-direct {p0}, Lcom/inca/security/wg;->IIiIIiIiIi()[B

    move-result-object v3

    .line 430
    array-length v9, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_f
    if-ge v5, v9, :cond_11

    aget-byte v5, v3, v6

    .line 230
    if-eqz v5, :cond_13

    .line 381
    const/4 v4, 0x1

    .line 425
    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    .line 418
    const/16 v0, 0x5361

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 380
    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v8, v7, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 465
    array-length v0, v3

    int-to-short v0, v0

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 464
    const/4 v0, 0x0

    .line 312
    const/4 v4, 0x2

    invoke-virtual {v8, v7, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 292
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 462
    const/16 v0, 0x5370

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 309
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-virtual {v8, v7, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 280
    invoke-direct {p0}, Lcom/inca/security/wg;->iIiIIiIIIi()[B

    move-result-object v3

    .line 279
    array-length v0, v3

    int-to-short v0, v0

    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 377
    const/4 v4, 0x0

    .line 392
    const/16 v0, 0x9

    const/4 v5, 0x2

    invoke-virtual {v8, v7, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 249
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 363
    :cond_12
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1574
    const/16 v2, 0xa

    .line 1175
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1474
    invoke-static {v0, v7}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 900
    const/4 v0, 0x0

    const/4 v4, 0x4

    invoke-virtual {v8, v7, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1427
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 744
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 850
    :try_start_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/wg;->IiiIiiiIiI:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 781
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    .line 990
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Lcom/inca/security/wb;

    move-result-object v1

    iget v1, v1, Lcom/inca/security/wb;->iiIiIIIiiI:I

    iput v1, p0, Lcom/inca/security/wg;->IIiIiIIIii:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 1274
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto/16 :goto_3

    .line 430
    :cond_13
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_f

    .line 373
    :cond_14
    :try_start_4
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 416
    const/4 v4, 0x1

    goto :goto_10

    .line 1352
    :cond_15
    invoke-virtual {p1}, Lcom/inca/security/pb;->IiiiIIIIii()Ljava/lang/Exception;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/wg;->IiiiiIiiIi:Ljava/lang/Exception;

    goto/16 :goto_5

    .line 1274
    :catch_2
    move-exception v0

    move v2, v1

    move-object v1, v0

    move v0, v3

    goto/16 :goto_3
.end method

.method public IiiiIIIIii()Lcom/inca/security/pb;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 483
    .line 232
    const-string v0, "\u0002\u0013VC\u0005A\u0002\u0011\u001e\u0016V\u0015R]\u0007I\u0003\u0016\u001e\u0011\u0002\u0014\u0007]\u0005G\u0007B\u0004\u0015\u0002\u0015VB\u0004\u0016"

    invoke-static {v0}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/inca/security/Proxy/JNISoxProxy;->getDeviceInfo()Lcom/inca/security/c;

    move-result-object v3

    .line 335
    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v3}, Lcom/inca/security/c;->iiiiiiiIii()Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/inca/security/wg;->IIIIiiIiII:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 281
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    if-eqz v4, :cond_f

    .line 306
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 476
    invoke-direct {p0}, Lcom/inca/security/wg;->iiIiIIIIIi()[B

    move-result-object v3

    invoke-static {v3, v0}, Lcom/inca/security/ca;->IiiiIIIIii([B[B)[B

    move-result-object v0

    .line 261
    if-eqz v0, :cond_f

    .line 407
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    :try_start_2
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 322
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/pb;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 299
    const/4 v7, 0x1

    :try_start_4
    invoke-virtual {p0, v0, v7}, Lcom/inca/security/wg;->IiiiIIIIii(Lcom/inca/security/pb;Z)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v7

    .line 264
    if-nez v7, :cond_1

    move v1, v6

    .line 438
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 386
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 339
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 479
    :cond_4
    :goto_3
    if-eqz v1, :cond_e

    :goto_4
    return-object v0

    .line 459
    :catch_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v0, v2

    .line 438
    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 386
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 339
    :cond_6
    :goto_7
    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3

    .line 390
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v0, v2

    .line 438
    :goto_8
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 386
    :cond_7
    :goto_9
    if-eqz v5, :cond_8

    :try_start_c
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 339
    :cond_8
    :goto_a
    if-eqz v3, :cond_4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_3

    .line 285
    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v0, v2

    .line 438
    :goto_b
    if-eqz v4, :cond_9

    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 386
    :cond_9
    :goto_c
    if-eqz v5, :cond_a

    :try_start_f
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 339
    :cond_a
    :goto_d
    if-eqz v3, :cond_4

    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3

    .line 438
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_e
    if-eqz v4, :cond_b

    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 386
    :cond_b
    :goto_f
    if-eqz v5, :cond_c

    :try_start_12
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 339
    :cond_c
    :goto_10
    if-eqz v2, :cond_d

    :try_start_13
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    :cond_d
    :goto_11
    throw v0

    :cond_e
    move-object v0, v2

    .line 479
    goto :goto_4

    .line 438
    :catch_6
    move-exception v4

    goto :goto_1

    .line 386
    :catch_7
    move-exception v4

    goto :goto_2

    .line 339
    :catch_8
    move-exception v3

    goto :goto_3

    .line 438
    :catch_9
    move-exception v4

    goto :goto_6

    .line 386
    :catch_a
    move-exception v4

    goto :goto_7

    .line 438
    :catch_b
    move-exception v4

    goto :goto_9

    .line 386
    :catch_c
    move-exception v4

    goto :goto_a

    .line 438
    :catch_d
    move-exception v4

    goto :goto_c

    .line 386
    :catch_e
    move-exception v4

    goto :goto_d

    .line 438
    :catch_f
    move-exception v1

    goto :goto_f

    .line 386
    :catch_10
    move-exception v1

    goto :goto_10

    .line 339
    :catch_11
    move-exception v1

    goto :goto_11

    .line 438
    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v5, v2

    move-object v2, v3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_e

    .line 285
    :catch_12
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    move-object v0, v2

    goto :goto_b

    :catch_13
    move-exception v0

    move-object v5, v2

    move-object v0, v2

    goto :goto_b

    :catch_14
    move-exception v0

    move-object v0, v2

    goto :goto_b

    :catch_15
    move-exception v6

    goto :goto_b

    .line 390
    :catch_16
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    move-object v0, v2

    goto :goto_8

    :catch_17
    move-exception v0

    move-object v5, v2

    move-object v0, v2

    goto :goto_8

    :catch_18
    move-exception v0

    move-object v0, v2

    goto :goto_8

    :catch_19
    move-exception v6

    goto :goto_8

    .line 459
    :catch_1a
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    move-object v0, v2

    goto/16 :goto_5

    :catch_1b
    move-exception v0

    move-object v5, v2

    move-object v0, v2

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    move-object v0, v2

    goto/16 :goto_5

    :catch_1d
    move-exception v6

    goto/16 :goto_5

    :cond_f
    move-object v3, v2

    move-object v5, v2

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public IiiiIIIIii()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/inca/security/wg;->IiiiiIiiIi:Ljava/lang/Exception;

    return-object v0
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/inca/security/wg;->IiIiIIIiIi:Z

    return v0
.end method

.method public IiiiIIIIii()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    new-array v1, v6, [B

    .line 76
    const-wide/16 v2, 0x0

    .line 128
    const-wide/16 v4, -0x5

    and-long/2addr v2, v4

    .line 24
    const-wide/16 v4, -0x401

    and-long/2addr v2, v4

    .line 147
    const-wide/16 v4, -0x801

    and-long/2addr v2, v4

    .line 21
    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    .line 83
    const-wide/32 v4, -0x100001

    and-long/2addr v2, v4

    const-wide v2, 0x0

    const-wide v4, 0x390604e113L

    add-long/2addr v2, v4

    .line 41
    invoke-static {v2, v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public iIiIIiIIIi(Lcom/inca/security/pb;)V
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/pb;

    .prologue
    .line 1447
    const/4 v2, 0x0

    .line 1471
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 953
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 694
    invoke-direct {p0, v0}, Lcom/inca/security/wg;->IiiiIIIIii([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1066
    if-eqz v1, :cond_0

    .line 977
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 875
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 724
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 925
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1066
    if-eqz v1, :cond_0

    .line 977
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 855
    :catch_2
    move-exception v0

    .line 875
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 541
    :catch_3
    move-exception v0

    .line 1396
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1066
    if-eqz v2, :cond_0

    .line 977
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 855
    :catch_4
    move-exception v0

    .line 875
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 977
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 963
    :cond_1
    :goto_4
    throw v0

    .line 855
    :catch_5
    move-exception v1

    .line 875
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1066
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 541
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 724
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public iiiiIIiiII()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-array v1, v6, [B

    .line 150
    const-wide/16 v2, -0x1

    .line 171
    const-wide/16 v4, -0x5

    and-long/2addr v2, v4

    .line 107
    const-wide/16 v4, -0x401

    and-long/2addr v2, v4

    .line 51
    const-wide/16 v4, -0x801

    and-long/2addr v2, v4

    .line 193
    const-wide/16 v4, -0x201

    and-long/2addr v2, v4

    .line 144
    const-wide/32 v4, -0x100001

    and-long/2addr v2, v4

    const-wide v2, 0x0

    const-wide v4, 0x7b8fcffdfbL

    add-long/2addr v2, v4

    .line 37
    invoke-static {v2, v3, v1}, Lcom/inca/security/va;->IiiiIIIIii(J[B)V

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
