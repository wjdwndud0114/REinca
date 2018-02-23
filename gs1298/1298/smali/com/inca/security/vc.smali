.class public Lcom/inca/security/vc;
.super Ljava/lang/Object;
.source "tc"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/ic;
    }
.end annotation


# static fields
.field private static final synthetic IiiIiiiIiI:Ljava/lang/String; = "\r\n"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/util/ArrayList;

.field private synthetic IIIiiiiIII:Ljava/net/URL;

.field private synthetic IiIiIiiIii:I


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "arg0"    # Ljava/net/URL;

    .prologue
    .line 97
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/inca/security/vc;-><init>(Ljava/net/URL;I)V

    .line 105
    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/URL;I)V
    .locals 2
    .param p1, "arg0"    # Ljava/net/URL;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    .line 19
    iput-object v1, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    .line 46
    iput v0, p0, Lcom/inca/security/vc;->IiIiIiiIii:I

    .line 195
    iput-object p1, p0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method private static synthetic IiiiIIIIii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u0019,\u00196P0\u00054P3U3\u00041\u00021W" #---------------------------7d115d2a20060c

    invoke-static {v0}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic IiiiIIIIii(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/util/ArrayList;

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Object;

    .line 130
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 26
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v3, v0

    instance-of v0, v0, Ljava/io/File;

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    aget-object v0, v3, v0

    instance-of v0, v0, Lcom/inca/security/ic;

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 199
    :cond_1
    :try_start_0
    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/String;

    const-string v4, "aUr,\u000c" #UTF-8

    invoke-static {v4}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    const/16 v0, 0x3d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "Nx]\u0001#" #UTF-8

    invoke-static {v4}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 85
    :goto_2
    add-int/lit8 v0, v0, 0x2

    array-length v4, v3

    if-ge v0, v4, :cond_0

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    goto :goto_2

    .line 164
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic IiiiIIIIii()Ljava/io/InputStream;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/vc;->IiIiIiiIii:I

    if-eqz v2, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/vc;->IiIiIiiIii:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 198
    :cond_0
    invoke-static {}, Lcom/inca/security/vc;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 201
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 63
    const-string v2, "wnZuQo@,phGq[r]u]nZ;\u0014g[sY,P`@`\u000f!Z`Yd\t" #Content-Disposition: form-data; name=

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 197
    const-string v2, "9" #"

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 185
    const-string v2, "B[o@dZu\u0019UMqQ;\u0014`DqXhW`@h[o\u001bnWuQu\u0019r@sQ`Y" #Content-Type: application/octet-stream

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 28
    const-string v2, " \u000c}EwIuMvI&" #; filename=

    invoke-static {v2}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 143
    const-string v2, ",\u0019" #--

    invoke-static {v2}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v2, 0x0

    .line 184
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "B[o@dZu\u0019UMqQ"

    const-string v14, "|T\u007fO"

    invoke-static {v14}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 172
    invoke-static {v6}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    const-string v16, "An@oEkMiX4Jt^v\u0001\u007fMoM \u000cyCnB\u007fMiU&" #multipart/form-data; boundary=

    invoke-static/range {v16 .. v16}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 127
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 76
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/Object;

    .line 24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    move v6, v2

    :goto_0
    array-length v3, v14

    if-ge v2, v3, :cond_8

    .line 14
    invoke-virtual {v5, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 41
    invoke-virtual {v5, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 136
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 158
    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 17
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 35
    aget-object v2, v14, v6

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 38
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 89
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 73
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 52
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 4
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    move v2, v6

    .line 154
    :goto_1
    add-int/lit8 v2, v2, 0x2

    array-length v3, v14

    if-ne v2, v3, :cond_1

    .line 53
    invoke-virtual {v5, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 43
    invoke-virtual {v5, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 203
    invoke-virtual {v5, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 149
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 21
    :cond_1
    add-int/lit8 v2, v6, 0x2

    move v6, v2

    goto :goto_0

    .line 113
    :cond_2
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_5

    .line 101
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    check-cast v2, Ljava/io/File;

    .line 34
    invoke-virtual {v5, v12}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 80
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    move-object v2, v5

    .line 51
    :goto_2
    invoke-virtual {v2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 193
    invoke-virtual {v5, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 144
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 121
    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 111
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_7

    .line 77
    add-int/lit8 v2, v6, 0x1

    aget-object v2, v14, v2

    check-cast v2, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    const/4 v4, 0x0

    .line 122
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 140
    const/16 v2, 0x2000

    :try_start_3
    new-array v2, v2, [B

    .line 196
    :goto_3
    invoke-virtual {v3, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_6

    .line 23
    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 75
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_5
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 265
    :catchall_1
    move-exception v1

    move-object v2, v5

    :goto_6
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    throw v1

    .line 18
    :cond_5
    :try_start_6
    invoke-virtual {v5, v12}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 150
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 171
    invoke-virtual {v5, v10}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v5

    goto :goto_2

    .line 75
    :cond_6
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v2, v5

    .line 64
    :goto_7
    :try_start_8
    invoke-virtual {v2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    move v2, v6

    .line 154
    goto/16 :goto_1

    .line 75
    :catch_0
    move-exception v2

    move-object v2, v5

    goto :goto_7

    :cond_7
    move-object v2, v5

    .line 64
    goto :goto_7

    .line 315
    :cond_8
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 228
    :cond_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 75
    :catch_1
    move-exception v2

    goto :goto_5

    .line 265
    :catchall_2
    move-exception v1

    goto :goto_6

    .line 75
    :catchall_3
    move-exception v1

    move-object v2, v4

    goto :goto_4
.end method

.method public synthetic IiiiIIIIii()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 387
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 216
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/inca/security/vc;->IiIiIiiIii:I

    .line 232
    return-void
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    new-instance v1, Lcom/inca/security/ic;

    invoke-direct {v1, p0}, Lcom/inca/security/ic;-><init>(Lcom/inca/security/vc;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "kMiMvIoIizz@nI;OzB<X;N~\u000cuYw@:" #parameterValue can't be null!

    invoke-static {v1}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public synthetic iIiIIiIIIi()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 204
    .line 66
    iget-object v1, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/inca/security/vc;->IIIIiiIiII:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/inca/security/vc;->IiiiIIIIii(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/vc;
    .local v0, "this":Lcom/inca/security/vc;
    move-object v2, v1

    .line 163
    :goto_0
    iget-object v1, v0, Lcom/inca/security/vc;->IIIiiiiIII:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 189
    iget v3, p0, Lcom/inca/security/vc;->IiIiIiiIii:I

    if-eqz v3, :cond_0

    .line 92
    iget v3, p0, Lcom/inca/security/vc;->IiIiIiiIii:I

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 178
    :cond_0
    const/4 v3, 0x0

    const-string v4, "otBoIuX6xb\\~"

    const-string v5, "Q{R`"

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    invoke-static {v4}, Lcom/inca/security/jb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UqDm]bUu]nZ.L,CvC,RnFl\u0019tFmQoWnPdP" #application/x-www-form-urlencoded

    invoke-static {v5}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 108
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 202
    const/4 v4, 0x0

    .line 13
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 60
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 133
    .end local v0    # "this":Lcom/inca/security/vc;
    .restart local p0    # "this":Lcom/inca/security/vc;
    :cond_2
    const-string v1, ""

    move-object v0, p0

    .end local p0    # "this":Lcom/inca/security/vc;
    .restart local v0    # "this":Lcom/inca/security/vc;
    move-object v2, v1

    .line 163
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method
