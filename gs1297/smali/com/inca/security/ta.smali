.class public Lcom/inca/security/ta;
.super Lcom/inca/security/ga;
.source "ha"


# instance fields
.field private synthetic IIIIiiIiII:I

.field private synthetic IIIiiiiIII:Ljava/lang/String;

.field private synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inca/security/ab;I)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/ab;
    .param p2, "arg1"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/inca/security/ga;-><init>()V

    .line 124
    iget-object v0, p1, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/ta;->IIIiiiiIII:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/inca/security/ab;->IiIiIIIiIi:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/ta;->IiiIiiiIiI:Ljava/lang/String;

    .line 56
    iget v0, p1, Lcom/inca/security/ab;->IiiiiIiiIi:I

    iput v0, p0, Lcom/inca/security/ta;->IIIIiiIiII:I

    .line 19
    iput p2, p0, Lcom/inca/security/ta;->IiIiIiiIii:I

    .line 44
    return-void
.end method


# virtual methods
.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inca/security/ta;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "p"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inca/security/ta;->IIIIiiIiII:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inca/security/ta;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0

    .line 204
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public IiiiIIIIii()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public IiiiIIIIii()Z
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    return v0
.end method

.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    .line 22
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/inca/security/ta;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "w"

    invoke-static {v5}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/inca/security/ta;->IIIIiiIiII:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inca/security/ta;->IiiIiiiIiI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 195
    const-string v5, "\tU)\\/\u0019\t[$@8[&"

    const/4 v6, 0x0

    iget v7, p0, Lcom/inca/security/ta;->IiIiIiiIii:I

    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 146
    iget v7, p0, Lcom/inca/security/ta;->IiIiIiiIii:I

    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 123
    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 179
    invoke-static {v5}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "D\"\u0007.K.B("

    invoke-static {v6}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 168
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 16
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 61
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 141
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    if-eqz v3, :cond_0

    .line 152
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_0
    if-eqz v2, :cond_8

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    :cond_1
    :goto_2
    move v1, v0

    .line 159
    :goto_3
    return v1

    .line 175
    :cond_2
    if-eqz v3, :cond_3

    .line 152
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_3
    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 190
    :catch_2
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 48
    :catch_3
    move-exception v0

    move-object v3, v2

    .line 153
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    if-eqz v3, :cond_4

    .line 152
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_4
    if-eqz v2, :cond_8

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v1

    .line 199
    goto :goto_2

    .line 190
    :catch_4
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 160
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 157
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    if-eqz v3, :cond_5

    .line 152
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_5
    if-eqz v2, :cond_8

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move v0, v1

    .line 199
    goto :goto_2

    .line 190
    :catch_6
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 25
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 175
    :goto_6
    if-eqz v3, :cond_6

    .line 152
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 174
    :cond_6
    if-eqz v2, :cond_7

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 199
    :cond_7
    :goto_7
    throw v0

    .line 190
    :catch_7
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 25
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 160
    :catch_8
    move-exception v0

    goto :goto_5

    .line 48
    :catch_9
    move-exception v0

    goto :goto_4

    .line 176
    :catch_a
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method
